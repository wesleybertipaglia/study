Algoritmo "Ex7 - Lista de Desafios"
// Disciplina  :  [Informática e Negócios -  Lógica de Programação]
// Professor   : Francisco Antonio de Almeida  ( Xyko Almeida)
// Descrição   : lê a idade de uma pessoa e a escreve apenas em dias
// Autor(a)    : Wesley Bertipaglia
// Data atual  : 22/06/2021
Var
   // Seção de Declarações das variáveis
   ano, meses, dias: inteiro
Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   //apresenta o app
   escreval ("Ex7 - Lista de Desafios")
   escreval ("Função: lê a idade de uma pessoa e a escreve apenas em dias")

   //recebe a idade da pessoa
   escreva ("Quantos anos você tem de idade? ")
   leia (ano)

   escreval

   escreva ("Tirando os anos, quantos meses sobram? ")
   leia (meses)

   escreval

   escreva ("Tirando os anos e os meses, quantos dias sobram? ")
   leia (dias)

   //calcula a idade em dias (1 ano = 365 dias)
   ano <- ano * 365
   meses <- meses * 30
   dias <- dias + ano + meses

   //resultados
   escreval
   escreval ("Você tem ", dias, " dias de idade")

Fimalgoritmo