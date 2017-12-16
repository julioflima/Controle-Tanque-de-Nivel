# Controle Tanque de Nível
## Projeto de Controle de Sistemas Dinâmicos - Engenharia Elétrica  - UFC


  Este projeto destina-se ao desenvolvimento de um controle de tanque de nível utilizando os conceitos de malha fechada, utilizando como conrolador o ATMEGA328-P e o sensor ultrassônico HC-SR04.

  Os sistemas automáticos de níveis de água atualmente estão presentes em boa parte no cotidiano da vida humana, sejam em industrias ou mesmo nas casas, tendo em vista os conceitos de reutilização ou captação de água. Para controlar estes tipos de sistemas, geralmente utilizam-se de sensores de nível para acionamento da bomba e o controle pode ser feito a partir de um controlador PID ou por histerese, por exemplo. O relatório referente a este projeto se limitará à um controle realizado com base na histerese de sistemas de controle, nos quais os procedimentos serão apresentados mais adiante. A figura abaixo mostra um exemplo esquemático de um sistema hidráulico controlado pela bomba.

<p align="center">
  <img src="https://user-images.githubusercontent.com/17098382/34068150-bfeddaa0-e215-11e7-84ae-49b37334c09f.png">
</p>

  Para o sistema controlado, a histerese é implementada na forma dinâmica de um determinado atraso da saída em referência com a entrada, desde que esta seja lentamente variável. Este tipo de histerese é uma relação de dependência de taxas, ou seja, pode funcionar com sistemas que necessitem de armazenamento durável de memória. Esta técnica como controlador serve basicamente para filtragem de sinais a fim de que se obtenha uma saída mais lenta de acordo com a memória armazenada de um sinal mais recente. 
Em um sistema baseado em ações liga/desliga, este controle reduz a vida útil ou afeta os dispositivos conectados a este sistema. Por isso, a utilização da técnica de histerese torna-se interessante para sistemas do tipo, resultando, assim, em uma seleção de uma determinada faixa, por exemplo com temperatura, como mostra abaixo.

<p align="center">
  <img src="https://user-images.githubusercontent.com/17098382/34068152-c3eecb1e-e215-11e7-9883-49f15a5febb3.png">
</p>

  A IHM desenvolvida, teve como intuito a facilidade na hora de interagir na mudança do valor de referência e na visualização do nível atual do tanque independentemente da medição analógica, essa por meio de um duto transparente. Nela foi utilizada um display LCD 16x2, onde é possível a verificação dos valores. Dois botões para mudança no valor da referência. Dois barramentos, um destinado ao sensor ultrassônico, e o outro destinado a placa de driver. Uma saída seria, onde os valores de PWM, nível do tanque e valore de referência, são enviados ao computador para análise. Assim como o micro controlador ATMEGA328-P, responsável pelo controle e aquisição de dados. O esquemático e a placa discorrida nesta seção encontra-se nos anexos do relatório.
  
<p align="center">
  <img src="https://user-images.githubusercontent.com/17098382/34068253-d9ac694c-e216-11e7-8fab-0cd89c61a441.png">
</p>

  O sensor utilizado neste projeto é o sensor ultrassônico HC-SR04, utilizado para medir distâncias entre 2cm até 4m. Com o intuito de fixação na estrutura desenvolvia, o sensor foi encapsulado em um case como mostra a figura abaixo. O esquemático discorrido nesta seção, assim como mais detalhes encontra-se nos anexos do relatório.

<p align="center">
  <img src="https://user-images.githubusercontent.com/17098382/34068255-dd05d0a6-e216-11e7-8f38-6c91a22ef8b0.png">
</p>

  O driver representa a parte de potência de um projeto, sendo este responsável pelo chaveamento de uma alta corrente, pois o controlador não suporta esse nível de potência, sendo assim indispensável. A placa de controle desenvolvida segue abaixo na figura abaixo.

<p align="center">
  <img src="https://user-images.githubusercontent.com/17098382/34068256-e0c36dfc-e216-11e7-869f-49f4a5daf665.png">
</p>

  Segue abaixo os gráficos relativos a dinâmica desse sistema, com o controle desenvolvido até então. Em verde o PWM, em vermelho a referência e em azul a elevação do nível da água.

<p align="center">
  <img src="https://user-images.githubusercontent.com/17098382/34068270-e4cc452c-e216-11e7-8269-c5abbfba5c6c.png">
</p>


## FORK IT!




