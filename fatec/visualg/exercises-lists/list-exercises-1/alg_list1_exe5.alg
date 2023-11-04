Algoritmo "App5-Ex5-Lista1"
// Disciplina  :  [Informática e Negócios -  Lógica de Programação]
// Professor   : Francisco Antonio de Almeida  ( Xyko Almeida)
// Descrição   : Calcula o salário mensal e comissão sobre vendas
// Autor(a)    : Wesley Bertipaglia
// Data atual  : 16/05/2021
Var
   // Seção de Declarações das variáveis
   porcentagem_comissao, comissao: real
   salario, venda, salario_comissao: real
   nome: caractere
   c_salario, c_comissao: caractere

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   //limpa a tela
   limpatela

   //apresenta o app
   escreval ("App 5 - Lista 1")
   escreval("Função: Calcula o salário mensal e comissão sobre vendas")

   //pula linha
   escreval ()

   //recebe o nome
   escreva ("Digite seu nome: ")
   leia (nome)

   //confirma o salario
   escreva ("O salário fixo é R$ 1500,00? (S/N) ")
   leia (c_salario)

   //estrutura de decisão confirmação salário
   se c_salario = ("S") entao
      salario <- 1500
   senao
      escreva ("Digite o salário: ")
      leia (salario)
   fimse

   //confirma a comissao
   escreva ("A comissão é de 15%? (S/N) ")
   leia (c_comissao)

   //estrutura de decisão confirmação comissão
   se c_comissao = ("S") entao
      porcentagem_comissao <- 15
   senao
      escreva ("Digite a Taxa de Comissão: ")
      leia (porcentagem_comissao)
   fimse

   //recebe a venda mensal
   escreva ("Digite a venda mensal: ")
   leia (venda)


   //calcula a comissao
   comissao <- venda*(porcentagem_comissao/100)


   //soma salario e comissao
   salario_comissao <- salario + comissao

   //limpa a tela
   limpatela

   //exibe os resultados
   escreval ("Colaborador: ", nome)
   escreval ("Salario Fixo: R$", salario)
   escreval ("Vendas: R$", venda)
   escreval ("Comissão: R$", comissao)
   escreval ("Total: R$", salario_comissao)

Fimalgoritmo