Algoritmo "App1-ex1-lista1"
// Disciplina  :  [Informática e Negócios -  Lógica de Programação]
// Professor   : Francisco Antonio de Almeida  ( Xyko Almeida)
// Descrição   : Recebe e mostra variaveis nome, idade e salário
// Autor(a)    : Wesley Bertipaglia
// Data atual  : 13/05/2021
Var
   // Seção de Declarações das variáveis
   nome : caracter
   idade : inteiro
   salario : real


Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   //limpa a tela
   limpatela

   //apresenta o app
   escreval ("App 1 - Lista 1")
   escreval("Função: Recebe e mostra variaveis nome, idade e salário")

   //pula linha
   escreval ()

   //recebe o nome do usuário
   escreva("Olá, digite seu nome: ")
   leia (nome)
   limpatela

   //recebe a idade do usuário
   escreva ("Agora, digite sua idade: ")
   leia (idade)
   limpatela

   //recebe o salário do usuário
   escreva ("Por fim, digite seu salário: ")
   leia (salario)
   limpatela

   //mostra as informações recolhidas
   escreval ("Nome: ", nome)
   escreval ("Idade: ", idade)
   escreval ("Salário: R$", salario)

Fimalgoritmo