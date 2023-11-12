Algoritmo "Ex22 - Lista de Desafios"
// Disciplina  :  [Informática e Negócios -  Lógica de Programação]
// Professor   : Francisco Antonio de Almeida  ( Xyko Almeida)
// Descrição   : Calcula salario e a hora extra
// Autor(a)    : Wesley Bertipaglia
// Data atual  : 22/06/2021
Var
   // Seção de Declarações das variáveis
   mes, semana, hora, extra, acrescimo, salario: real

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   //apresenta o app
   escreval ("Ex22 - Lista de Desafios")
   escreval ("Função: Calcula salario e a hora extra")

   //recebe o numero de horas trabalhadas em 1 mes
   escreva ("Digite o numero de horas trabalhadas no mes: ")
   leia (mes)

   //calcula horas trbalhadas semanais
   semana <- mes/4

   //recebe o salario por hora
   escreva ("Digite o salario por hora: ")
   leia (hora)

   //calcula as horas extras
   se semana > 40 entao
      extra <- (semana - 40)*4
      acrescimo <- extra*0.5
   fimse

   //calcula um mes de salario
   salario <- (mes+acrescimo)*hora

   //resultado
   limpatela //limpa tela
   escreval //pula linha
   escreval ("Horas trabalhadas semanais: ", semana)
   escreval ("Total de horas extras: ", extra)
   escreval ("Salário por hora: ", hora)
   escreval ("Salário Total: ", salario)

Fimalgoritmo