Algoritmo "Ex25 - Lista de Desafios"
// Disciplina  :  [Informática e Negócios -  Lógica de Programação]
// Professor   : Francisco Antonio de Almeida  ( Xyko Almeida)
// Descrição   : Calcula o saldo de uma conta e verifica se é positivo
// Autor(a)    : Wesley Bertipaglia
// Data atual  : 22/06/2021
Var
   // Seção de Declarações das variáveis
   conta, saldo, debito, credito, saldoatual: real
   situacao: caractere

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   //apresenta o app
   escreval ("Ex25 - Lista de Desafios")
   escreval ("Função: Calcula o saldo de uma conta e verifica se é positivo")

   //recebe o numero da conta do cliente
   escreva ("Digite o número da conta bancária: ")
   leia (conta)

   //recebe o saldo, debito e credito
   escreva ("Digite o saldo: ")
   leia (saldo)

   escreva ("Digite o debito: ")
   leia (debito)

   escreva ("Digite o crédito: ")
   leia (credito)

   //calcula o saldo atual
   saldoatual <- saldo - debito + credito

   //verifica se o saldo é positivo ou negativo
   se saldoatual > 0 entao
      situacao <- "positivo"
   senao
      situacao <- "negativo"
   fimse

   se saldoatual = 0 entao
      situacao <- "saldo zerado"
   fimse

   //limpa tela
   limpatela

   //resultados
   escreval ("Seu saldo atual é de: ", saldoatual)
   escreval ("Situação: ", situacao)

Fimalgoritmo