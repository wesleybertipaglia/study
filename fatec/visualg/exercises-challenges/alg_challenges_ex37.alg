Algoritmo "Ex37 - Lista de Desafios"
// Disciplina  :  [Informática e Negócios -  Lógica de Programação]
// Professor   : Francisco Antonio de Almeida  ( Xyko Almeida)
// Descrição   : Calcula o total de uma compra de morangos e macas
// Autor(a)    : Wesley Bertipaglia
// Data atual  : 22/06/2021
Var
   // Seção de Declarações das variáveis
   kgmora, kgmaca, maca, mora, total, desconto: real

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   //apresenta o app
   escreval ("Ex37 - Lista de Desafios")
   escreval ("Função: Calcula o total de uma compra de morangos e macas")

   //recebe a quantidade comprada de maças e morangos
   escreva ("Digite a quantidade (Kg) de morangos: ")
   leia (kgmora)

   escreva ("Digite a quantidade (Kg) de maças: ")
   leia (kgmaca)

   //verifica o preco
   se (kgmora >= 5) entao
      mora <- 2.2
   senao
      mora <- 2.5
   fimse

   se (kgmaca >= 5) entao
      maca <- 1.5
   senao
      maca <- 1.8
   fimse

   //calcula o total
   total <- (kgmora * mora) + (kgmaca * maca)

   //verifica o desconto
   se ((kgmora + kgmaca) > 8) ou (total > 25) entao
      desconto <- total * (10/100)
      total <- total - desconto
   fimse

   //resultado
   escreval //pula linha
   escreval ("Maça: R$", (kgmaca * maca))
   escreval ("Morango: R$", (kgmora * mora))
   escreval ("Desconto: R$", desconto)
   escreval ("Total: R$", total)
Fimalgoritmo