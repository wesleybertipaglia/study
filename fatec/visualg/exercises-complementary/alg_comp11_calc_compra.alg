Algoritmo "Calcula Compra"
// Disciplina  : Algoritmo e Programação de Computadores
// Professor   : Valeria Maria Volpe
// Descrição   : Calcula a compra de um doce
// Autor(a)    : Wesley Bertipaglia
// Data atual  : 23/10/2021
Var
   // Seção de Declarações das variáveis
   TipoDoce, QuantidadeKg: inteiro
   PrecoKg, TotalPagar: real
   NomeDoce: caractere

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   //Entrada de dados
   escreva("Digite o tipo do doce: ")
   leia(TipoDoce)
   escreva("Digite quantidade comprada em kg: ")
   leia(QuantidadeKg)

   //Verseica o tipo de doce
   escolha TipoDoce
   caso 1
      NomeDoce <- "Trufa"
      se (QuantidadeKg <= 5) entao
         PrecoKg <- 25
      senao
         PrecoKg <- 22

   caso 2
      NomeDoce <- "Torta"
      se (QuantidadeKg <= 5) entao
         PrecoKg <- 24.45
      senao
      PrecoKg <- 22.25
      fimse

   caso 3
      NomeDoce <- "Bolo"
      se (QuantidadeKg <= 5) entao
         PrecoKg <- 35
      senao
           PrecoKg <- 30
      fimse
   fimescolha

//Calcula o valor a ser pago
TotalPagar <- QuantidadeKg * PrecoKg
//Saida de dados
escreval("Tipo de doce: ", NomeDoce)
escreval("Preco do Kg: ", PrecoKg)
escreval("Quantidade comprada: ", QuantidadeKg)
escreval("Total a pagar: ", TotalPagar)

Fimalgoritmo
