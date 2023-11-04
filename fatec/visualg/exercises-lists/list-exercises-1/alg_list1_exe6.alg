Algoritmo "App6-Ex6-Lista1"
// Disciplina  :  [Informática e Negócios -  Lógica de Programação]
// Professor   : Francisco Antonio de Almeida  ( Xyko Almeida)
// Descrição   : Calcula a comissao sobre vendas com o salário fixo
// Autor(a)    : Wesley Berrtipaglia
// Data atual  : 16/05/2021
Var
   // Seção de Declarações das variáveis
   nome: caractere
   salario_fixo, comissao, salario_final: real
   n_vendas: inteiro

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   //limpa a tela
   limpatela

   //apresenta o app
   escreval ("App 6 - Lista 1")
   escreval("Função: Calcula a comissao sobre vendas com o salário fixo")

   //pula linha
   escreval ()

   //atribuição de variáveis
   salario_fixo <- 1000

   //recebe o nome
   escreva ("Colaborador: ")
   leia (nome)

   //recebe o número de vendas de software
   escreva ("Digite a Quantidade de softwares vendidos: ")
   leia (n_vendas)

   //calcula a comissao sobre vendas
   comissao <- 70*n_vendas

   //soma salario fixo e comissão
   salario_final <- salario_fixo + comissao

   //limpa a tela
   limpatela

   //exibe os resultados
   escreval ("Colaborador: ", nome)
   escreval ("Saláro: R$", salario_fixo)
   escreval ("Comissão sobre Vendas: R$", comissao)
   escreval ("Salário Total: R$", salario_final)
Fimalgoritmo