Algoritmo "App9-Ex9-Lista1"
// Disciplina  :  [Informática e Negócios -  Lógica de Programação]
// Professor   : Francisco Antonio de Almeida  ( Xyko Almeida)
// Descrição   : Recebe dois números e realiza as quatro operações matemáticas
// Autor(a)    : Wesley Bertipaglia
// Data atual  : 16/05/2021
Var
   // Seção de Declarações das variáveis
   n1, n2: real
   soma, subtracao, multiplicacao, divisao: real

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   //limpa a tela
   limpatela

   //apresenta o app
   escreval ("App 9 - Lista 1")
   escreval("Função: Lê dois números e realiza as quatro operações matemáticas")

   //pula linha
   escreval ()

   //recebe os números
   escreva ("Digite o preimeiro número: ")
   leia (n1)

   escreva ("Digite o segundo número: ")
   leia (n2)

   //realiza os calculos matemáticos
   soma <- n1 + n2
   subtracao <- n1 - n2
   multiplicacao <- n1 * n2

   //estrutura se estao. Verifica a divisao por 0
   se n2 = 0 entao
      divisao <- ("inexistente")
   senao
      divisao <- n1 / n2
   fimse

   //limpa a tela
   limpatela

   //exibe os resultados
   escreval ("Soma: ", soma)
   escreval ("Subtração: ", subtracao)
   escreval ("multiplicação: ", multiplicacao)
   escreval ("Divisão : ", divisao)


Fimalgoritmo