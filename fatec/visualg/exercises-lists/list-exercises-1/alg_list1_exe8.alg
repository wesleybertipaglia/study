Algoritmo "App8-Ex8-Lista1"
// Disciplina  :  [Informática e Negócios -  Lógica de Programação]
// Professor   : Francisco Antonio de Almeida  ( Xyko Almeida)
// Descrição   : Calcula o juros de uma prestação
// Autor(a)    : Wesley Bertipaglia
// Data atual  : 16/05/2021
Var
   // Seção de Declarações das variáveis
   nome: caractere
   v_prestacao, taxa, juros, t_prestacao: real
   d_atraso: inteiro

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   //limpa a tela
   limpatela

   //apresenta o app
   escreval ("App 8 - Lista 1")
   escreval("Função: Calcula o juros de uma prestação")

   //pula linha
   escreval ()

   //recebe o nome do cliente
   escreva ("Nome do Cliente: ")
   leia (nome)

   //recebe o valor da prestação
   escreva ("Digite o Valor da Prestação: ")
   leia(v_prestacao)

   //recebe a taxa de juros
   escreva ("Digite a taxa de juros: ")
   leia (taxa)

   //recebe os dias de atraso
   escreva ("Digite a quantidade de dias de atraso: ")
   leia (d_atraso)

   //estrutura se para calculo de juros
   se d_atraso <= 30 entao
      juros <- v_prestacao*(taxa/100)
   senao
      juros <- v_prestacao*(taxa/100)*d_atraso
   fimse

   //calcula o total da prestação
   t_prestacao <- v_prestacao + juros

   //exibe os resultados
   escreval ("Cliente: ", nome)
   escreval ("Valor da Parcela: ", v_prestacao)
   escreval ("Dias de atraso: ", d_atraso)
   escreval ("Juros: ", juros)
   escreval("------------------------------------")
   escreval ("Total a ser pago: R$", t_prestacao)
Fimalgoritmo