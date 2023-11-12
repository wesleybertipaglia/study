Algoritmo "Ex9 - Lista de Desafios"
// Disciplina  :  [Informática e Negócios -  Lógica de Programação]
// Professor   : Francisco Antonio de Almeida  ( Xyko Almeida)
// Descrição   : Calcula o reajuste salariál
// Autor(a)    : Wesley Bertipaglia
// Data atual  : 22/06/2021
Var
   // Seção de Declarações das variáveis
   salario, percreajuste, reajuste, novosalario: real
Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   //apresenta o app
   escreval ("Ex9 - Lista de Desafios")
   escreval ("Função: Calcula o reajuste salariál")

   //recebe salário
   escreva ("Digite o salário: ")
   leia (salario)

   escreval //pula linha

   //recebe percentual de reajuste
   escreva ("Digite o percentual de reajuste: ")
   leia (percreajuste)

   escreval //pula linha

   //calcula reajuste
   reajuste <- salario*(percreajuste/100)
   novosalario <- salario+reajuste

   //resultados
   escreval ("O reajuste é de: ", reajuste)
   escreval ("O novo salário é de: ", novosalario)

Fimalgoritmo