// Carrega as bibliotecas, sensor ultrassonico e LCD.  
#include <Ultrasonic.h>  
#include <LiquidCrystal.h>  
  
// Declara a variável de referência do nível da água.  
float waterLvl = 25;  
  
// Declara a variável que armazena a distância recebida.  
float distance = 0;  
  
// Declara a variável de tempo para plotar os valores.  
float timerPrint = 0;  
  
// Declara a variável do duty cicle do PWM.  
float duty = 0;  
  
// Declara a variável de tempo para o controlador.  
float timerControl = 0;  
  
// Define as constantes do sistema.  
#define timeSystem 10  
#define timeControl 2*timeSystem  
#define timePrint 100*timeSystem  
#define clvlwater 47.59  
#define offset_lvlwater 4.2  
  
// Define a constantes histerese de distância.  
#define deltaSystem 0.50  
  
// Declara e define os pinos utilizados pelo LCD.  
// Inicializa a biblioteca do LCD, com os pinos que serão utilizados.  
const int constraste = 10, rs = 4, en = 5, d4 = 6, d5 = 7, d6 = 8, d7 = 9;  
LiquidCrystal lcd(rs, en, d4, d5, d6, d7);  
  
// Declara e define os pinos para o trigger e echo.  
#define pino_trigger 15  
#define pino_echo 14  
  
// Inicializa o sensor nos pinos definidos acima.  
Ultrasonic ultrasonic(pino_trigger, pino_echo);  
  
// Declara e define o pino utilizado no PWM.  
#define pwm 11  
  
// Define os pinos utilizados nos botões.  
#define btn_01 2  
#define btn_02 3  
  
void setup()  
{  
  // Attach the Extern Interruptions.  
  attachInterrupt(digitalPinToInterrupt(btn_01), upLvl, FALLING);  
  attachInterrupt(digitalPinToInterrupt(btn_02), downLvl, FALLING);  
  
  // Muda o constraste do LCD.  
  analogWrite(constraste, 50);    
     
  // Iniciliza a Serial, com sua velocidade..  
  Serial.begin(9600);  
  
  // Seta os números o número linhas e colunas do LCD.  
  lcd.begin(16, 2);  
    
  // Escreva no LCD, Controle Analógico em inglês. ;)  
  lcd.write("Analogic Control");  
  
  //Aplica delay de 1s.  
  delay(2000);  
}  
  
void loop()  
{  
    // Recebe distância do nível da água.  
    distance = getDistance();  
  
    // Plota o nível referência do nível da água no LCD, a cada 1s.  
    printLCD(distance);  
  
    // Plota o nível referência do nível da água na Serial.  
    printSerial(distance);  
        
    // Controla.  
    digitalControl(distance,waterLvl);
}  
  
// Exibe informações no LCD, a cada 1s.  
void printLCD(float distance) {  
    if((millis()-timerPrint)>=timePrint){  
      timerPrint = millis();  
        
      lcd.clear();  
      lcd.setCursor(0, 0);  
      lcd.write("Nivel:");  
      lcd.print(distance);  
      lcd.print("cm");  
      lcd.setCursor(0, 1);  
      lcd.write("Ref.:");  
      lcd.print(waterLvl);  
      lcd.print("cm");  
  }  
}  
  
// Exibe informações na Serial.  
void printSerial(float distance) {  
  Serial.print("Nivel em cm: ");  
  Serial.print(distance);  
  Serial.print("            ");  
  Serial.print("Referencia em cm: ");  
  Serial.print(waterLvl);  
  Serial.print("            ");  
  Serial.print("Duty: ");  
  Serial.println((duty/255)*50);  
}  
  
// Plota no duty do PWM o valor do nível da água.  
void pwmDistance(float duty) {  
  analogWrite(pwm, duty);    
}  
  
// Retorna a distancia do nivel da água.  
float getDistance() {  
  float cmMsec;  
  for(int i = 0 ; i<1; i++){  
    // Lê as informacoes do sensor, em cm.  
    long microsec = ultrasonic.timing();  
    cmMsec += ultrasonic.convert(microsec, Ultrasonic::CM);  
    delay(timeSystem);  
  }  
 return clvlwater - cmMsec/1 + offset_lvlwater;  
}  
  
// Incrementa em 0.01 o nível de referência da água.  
void upLvl(){  
  while(!digitalRead(btn_01)){  
    if(waterLvl<50){  
      waterLvl += 0.01;  
      printLCD(distance);  
      delay(100);  
    }  
  }  
}  
  
// Decrementa em 0.01 o nível de referência da água.  
void downLvl(){  
  while(!digitalRead(btn_02)){  
      if(waterLvl>0){  
      waterLvl -= 0.01;  
      printLCD(distance);  
      delay(100);  
    }  
  }  
}  
  
void digitalControl(float distance, float waterLvl){  
  // Controle de Histerese de Tempo.  
  // Apenas irá controlar quando o tempo de captura espaçar 200ms desde a última leitura  
  if((millis()-timerControl)>=timeControl){  
    timerControl = millis();  
  
    // Controle de Histerese de Distâncias.  
    // Verifica se a diferença entre o nível e a referência é superiores a 0.5cm.  
    if((distance - waterLvl) > deltaSystem){  
      pwmDistance(setDuty(duty - 1));  
    }  
    else if((distance - waterLvl) < -deltaSystem){  
      pwmDistance(setDuty(duty + 1));  
    }  
  }  
}  
  
int setDuty(int _duty){  
    if(_duty < 255 && _duty > 0){  
       duty = _duty;  
  }  
  return duty;  
}  
