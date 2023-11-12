Algoritmo "Ex76 - Lista de Desafios"
// Disciplina  :  [Informática e Negócios -  Lógica de Programação]
// Professor   : Francisco Antonio de Almeida  ( Xyko Almeida)
// Descrição   : Desenha um retangulo na tela formado pelo caractere "+"
// Autor(a)    : Wesley Bertipaglia
// Data atual  : 22/06/2021
Var
   // Seção de Declarações das variáveis
   i: inteiro

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   //apresenta o app
   escreval ("Ex76 - Lista de Desafios")
   escreval ("Função: Desenha um retangulo na tela")
   escreval
   
   //primeira linha
   para i de 1 ate 60 faca
        posicionar (1,i)
        escreva ("+")
   fimpara

   //ultima linha
   para i de 1 ate 60 faca
        posicionar (10,i)
        escreva ("+")
   fimpara

   //primeira coluna
   para i de 1 ate 10 faca
        posicionar (i,1)
        escreva ("+")
   fimpara

   //ultima coluna
   para i de 1 ate 10 faca
        posicionar (i,60)
        escreva ("+")
   fimpara

Fimalgoritmo