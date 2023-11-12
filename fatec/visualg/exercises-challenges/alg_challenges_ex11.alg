Algoritmo "Ex11 - Lista de Desafios"
// Disciplina  :  [Informática e Negócios -  Lógica de Programação]
// Professor   : Francisco Antonio de Almeida  ( Xyko Almeida)
// Descrição   : Calcula o salario de um vendedor de carros
// Autor(a)    : Wesley Bertipaglia
// Data atual  : 22/06/2021
Var
   // Seção de Declarações das variáveis
   salariofixo, salariofinal, carrosv, vendas, ccarros, ccarrosc, cvendas: real

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   //apresenta o app
   escreval ("Ex11 - Lista de Desafios")
   escreval ("Função: Calcula o salario de um vendedor de carros")
   escreval

   //recebe o salario fixo
   escreva ("Digite o salário fixo: ")
   leia (salariofixo)

   //recebe a comissao por venda
   escreva ("Digite a comissao por carro vendido: ")
   leia (ccarros)

   //recebe o numero de carros vendidos
   escreva ("Digite o número de carros vendidos: ")
   leia (carrosv)

   //recebe o valor total das vendas
   escreva ("Digite o valor total de vendas: ")
   leia (vendas)

   //calcula a comissao por carro vendido
   ccarrosc <- ccarros*carrosv

   //calcula a comissao sobre o valor das vendas
   cvendas <- vendas*(5/100)

   //calcula o salario final
   salariofinal <- salariofixo+ccarrosc+cvendas

   //pula linha
   escreval

   //resultados
   escreval ("Salário fixo: ", salariofixo)
   escreval ("Comissão sobre carros vendidos: ", ccarrosc)
   escreval ("Comissão sobre o total de vendas: ", cvendas)
   escreval ("---------------------------------------------")
   escreval ("Salário Final: ", salariofinal)

Fimalgoritmo