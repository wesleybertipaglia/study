Algoritmo "Ex79 - Lista de Desafios"
// Disciplina  :  [Informática e Negócios -  Lógica de Programação]
// Professor   : Francisco Antonio de Almeida  ( Xyko Almeida)
// Descrição   : Calcula a média de alunos e os alunos acima da média
// Autor(a)    : Wesley Bertipaglia
// Data atual  : 22/06/2021
Var
   // Seção de Declarações das variáveis
   n: vetor [1..20] de real
   i, cont: inteiro
   media, soma: real

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   //apresenta o app
   escreval ("Ex79 - Lista de Desafios")
   escreval ("Função: Calcula a média de alunos e os alunos acima da média")
   escreval
   
   //recebe as notas
   para i de 1 ate 20 faca
      escreva ("Digite a nota do aluno ", i, ": ")
      leia (n[i])
      soma <- soma + n[i]
   fimpara

   //calcula média
   media <- soma / 20

   //conta notas acima da média
   para i de 1 ate 20 faca
      se n[i] > media entao
         cont <- cont +1
      fimse
   fimpara

   //resultados
   escreval
   escreval ("Média das Turma: ", media)
   escreval ("Alunos Acima da Média: ", cont)

Fimalgoritmo