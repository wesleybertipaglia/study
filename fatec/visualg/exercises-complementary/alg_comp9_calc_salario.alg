Algoritmo "Calcula Salario"
// Disciplina  :  [Informática e Negócios -  Lógica de Programação]
// Professor   : Francisco Antonio de Almeida  ( Xyko Almeida)
// Descrição   : Retorna o salario total
// Autor(a)    : Wesley Bertipaglia
// Data atual  : 19/05/2021
Var
   // Seção de Declarações das variáveis
   salario, salario_venda, salario_falta, vendas, ajuda_custo, trabalho_voluntario: real
   faltas: inteiro

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   //recebe salario fixo
   escreva("Digite o salário fixo: ")
   leia (salario)

   //recebe total de venas
   escreva ("Digite o total de vendas: ")
   leia (vendas)

   //estrutura se para vendas superiores a R$10.000,00
   se vendas > 10000 entao
      salario_venda <- salario*0.15
   fimse

   //recebe faltas
   escreva ("Digite o total de faltas: ")
   leia(faltas)

   //estrutura se para faltas superiores a 5
   se faltas >= 5 entao
      salario_falta <- salario*0.10
   fimse

   //recebe as horas de trabalho voluntario
   escreva ("Digite as horas de trabalho voluntario: ")
   leia(trabalho_voluntario)

   //estrutura se para horas de trabalho voluntario
   se trabalho_voluntario > 10 entao
      ajuda_custo <- trabalho_voluntario*50
   senao
      ajuda_custo <- trabalho_voluntario*40
   fimse

   //soma salario + ajuda_custo
   salario <- salario + salario_venda - salario_falta + ajuda_custo

   //apresenta os resultados
   escreval ("Salário: ", salario)


Fimalgoritmo
