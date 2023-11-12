Algoritmo "Ex73 - Lista de Desafios"
// Disciplina  :  [Informática e Negócios -  Lógica de Programação]
// Professor   : Francisco Antonio de Almeida  ( Xyko Almeida)
// Descrição   : Faz a média do salário e numero de filhos de uma população
// Autor(a)    : Wesley Bertipaglia
// Data atual  : 22/06/2021
Var
   // Seção de Declarações das variáveis
   salario, ssalario, msalario, mfilhos, perc: real
   s150, filhos, sfilhos, cont: inteiro

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   //apresenta o app
   escreval ("Ex73 - Lista de Desafios")
   escreval ("Função: Faz a média do salário e numero de filhos de uma população")
   escreval ("OBS: o algoritmo termina com a entrada de salario negativo")

   salario <- 1
   enquanto salario > 0 faca
      //recebe salário de cada habitante
      escreval
      escreva ("Digite o salário: ")
      leia (salario)
      ssalario <- ssalario + salario

      se salario <= 150 entao
         s150 <- s150 + 1
      fimse

      //recebe número de filhos de cada habitante
      escreva ("Digite o numero de filhos: ")
      leia (filhos)
      sfilhos <- sfilhos + filhos

      cont <- cont + 1
   fimenquanto

   //media de salário da população
   msalario <- ssalario/cont

   //média de filhos da população
   mfilhos <- sfilhos/cont

   //percentual de pessoas que recebem menos de R$ 150
   perc <- (s150*100)/cont

   //resultados
   escreval
   escreval ("População: ", cont)
   escreval ("Média de Salários: ", msalario)
   escreval ("Média de filhos: ", mfilhos)
   escreval ("Percentual de Pessoas que recebem menos que R$150: ", perc, "%")

Fimalgoritmo