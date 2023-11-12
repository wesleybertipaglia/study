Algoritmo "Ex24 - Lista de Desafios"
// Disciplina  :  [Informática e Negócios -  Lógica de Programação]
// Professor   : Francisco Antonio de Almeida  ( Xyko Almeida)
// Descrição   : Calcula a comissao e o salario
// Autor(a)    : Wesley Bertipaglia
// Data atual  : 22/06/2021
Var
   // Seção de Declarações das variáveis
   salario, vendas, comissao3, comissao5, excedente, salariototal: real

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   //apresenta o app
   escreval ("Ex24 - Lista de Desafios")
   escreval ("Função: Calcula a comissao e o salario")

   //recebe salário
   escreva ("Digite o salário: ")
   leia (salario)

   //recebe total de vendas
   escreva ("Digite o total de vendas: ")
   leia (vendas)

   //calcula comissao
   //de 3% sobre o total das vendas até R$ 1.500,00 mais 5% sobre o que ultrapassar este valor
   se vendas >= 1500 entao
      comissao3 <- 1500 * (3/100)
      excedente <- vendas - 1500
      comissao5 <- excedente * (5/100)
   senao
      comissao3 <- vendas * (3/100)
   fimse

   //limpa tela
   limpatela

   //calcula o salário total
   salariototal <- salario + comissao3 + comissao5

   //resultado
   escreval ("----------------------------")
   escreval ("Salário fixo: ", salario)
   escreval ("Vendas: ", vendas)
   escreval ("Comissão: ", comissao3)
   escreval ("Comissão bonus: ", comissao5)
   escreval ("Salário Total: ", salariototal)

Fimalgoritmo