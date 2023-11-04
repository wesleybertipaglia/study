Algoritmo "App13-Ex13-Lista1"
// Disciplina  :  [Informática e Negócios -  Lógica de Programação]
// Professor   : Francisco Antonio de Almeida  ( Xyko Almeida)
// Descrição   : Recebe o nome e a idade de 10 pessoas, apresenta, aponta a mais jovem e a mais idosa
// Autor(a)    : Wesley Bertipaglia
// Data atual  : 17/05/2021
Var
   // Seção de Declarações das variáveis
   nome: vetor [0..9] de caracter
   idade: vetor [0..9] de inteiro
   i, j: inteiro
   menor_idade, maior_idade: inteiro
   jovem, idosa: caractere

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   //limpa a tela
   limpatela

   //apresenta o app
   escreval ("App 13 - Lista 1")
   escreval ("Função: Recebe nome e idade de 10 pessoas e apresenta")

   //pula linha
   escreval()

   //recebe o nome e a idade de 10 pessoas
   para i de 0 ate 2 faca
      escreva ("Digite o ", i+1, "° nome: ")
      leia (nome[j])
      escreva ("Digite a idade dessa pessoa: ")
      leia (idade[j])
      limpatela
   fimpara

   //determina a pessoa mais jovem
   para i de 1 ate 9 faca
      se menor_idade > idade[i] entao
         menor_idade <- idade[i]
      senao
         se maior_idade < idade[i] entao
            maior_idade <- idade[i]
         fimSe
      fimSe
   fimPara

   //apresenta os resultados

   escreval ("Pessoa mais jovem: ", jovem)
   escreval ("Pessoa mais velha: ", idosa)
   escreval ()

   para i de 0 ate 9 faca
      escreval (i+1, "° Pessoa")
      escreval ("Nome: ", nome[j])
      escreval ("Idade: ", idade [j])
      escreval()
   fimpara

Fimalgoritmo