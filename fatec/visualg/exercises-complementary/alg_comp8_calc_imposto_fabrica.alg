Algoritmo "Custo de um carro"
// Disciplina  :  [Informática e Negócios -  Lógica de Programação]
// Professor   : Francisco Antonio de Almeida  ( Xyko Almeida)
// Descrição   : Retorna o custo do carro
// Autor(a)    : Wesley Bertipaglia
// Data atual  : 19/05/2021

Var
   // Seção de Declarações das variáveis
   fabrica, carro, imposto: real

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   //recebe o custo de fabrica
   escreva ("Digite o custo de fábrica: ")
   leia (fabrica)

   //estrutura se para
   se fabrica <= 70000 entao
      imposto <- 0.28*fabrica+0.45*fabrica
   senao
      imposto <- 0.355*fabrica+0.526*fabrica
   fimse

   //soma imposto + custos de fabrica
   carro <- imposto+fabrica

   //apresenta os resultados
   escreval ("Valor do Carro: ", carro)

Fimalgoritmo
