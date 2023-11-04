Algoritmo "app3-ex3-lista1"
// Disciplina  :  [Informática e Negócios -  Lógica de Programação]
// Professor   : Francisco Antonio de Almeida  ( Xyko Almeida)
// Descrição   : Recebe e calcula custos para determinar o custo final de um veiculo
// Autor(a)    : Wesley Bertipaglia
// Data atual  : 13/05/2021
Var
   // Seção de Declarações das variáveis
   custo_fabrica, custo_revendedor, impostos, custo_final: real

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   //Limpa a tela
   limpatela

   //apresenta o app
   escreval ("App 3 - Lista 1")
   escreval("Função: Calcula custos para determinar o valor de um veiculo")

   //pula linha
   escreval ()

   //Recebe o custo de fábrica
   escreva ("Digite o custo de fábrica do veículo: ")
   leia (custo_fabrica)

   //Calcula os custos
   custo_revendedor <- (custo_fabrica*(25/100))
   impostos <- (custo_fabrica*(45/100))

   //Realiza a soma dos custos
   custo_final <- (custo_fabrica + custo_revendedor + impostos)

   //Exibe os resultados
   escreval ("Custo de Fábricação: R$", custo_fabrica)
   escreval ("Custo do Revendedor: R$", custo_revendedor)
   escreval ("Impostos: R$", impostos)
   escreval ("Custo para o Consumidor: R$", custo_final)

Fimalgoritmo