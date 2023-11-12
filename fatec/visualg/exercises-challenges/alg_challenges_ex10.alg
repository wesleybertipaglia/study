Algoritmo "Ex10 - Lista de Desafios"
// Disciplina  :  [Informática e Negócios -  Lógica de Programação]
// Professor   : Francisco Antonio de Almeida  ( Xyko Almeida)
// Descrição   : Calcula o pv de um automóvel baseados no custo de fabricação, distribuidor e impostos
// Autor(a)    : Wesley Bertipaglia
// Data atual  : 22/06/2021
Var
   // Seção de Declarações das variáveis
   custofabrica, distribuidor, impostos, pv: real

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   //apresenta o app
   escreval ("Ex10 - Lista de Desafios")
   escreval ("Função: Calcula o preço de venda de um automóvel")

   //recebe o custo de fabricação do automovel
   escreva ("Digite o custo de fabricação: ")
   leia (custofabrica)

   //calcula o percentual do distribuidor
   distribuidor <- custofabrica * (28/100)

   //calcula os impostos aplicados à fabricação
   impostos <- custofabrica * (45/100)

   //calcula o preço de venda do automóvel
   pv <- custofabrica + distribuidor + impostos

   escreval //pula linha

   //resultado
   escreval ("Preço de venda: ", pv)
   escreval ("-----------------------")
   escreval ("Custo de fábrica: ", custofabrica)
   escreval ("Distribuidor: ", distribuidor)
   escreval ("Impostos: ", impostos)

Fimalgoritmo