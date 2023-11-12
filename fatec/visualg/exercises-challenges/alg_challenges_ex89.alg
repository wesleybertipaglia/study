Algoritmo "Ex89 - Lista de Desafios"
// Disciplina  :  [Informática e Negócios -  Lógica de Programação]
// Professor   : Francisco Antonio de Almeida  ( Xyko Almeida)
// Descrição   : Verifica números iguais em dois vetores e suas posições
// Autor(a)    : Wesley Bertipaglia
// Data atual  : 22/06/2021
Var
// Seção de Declarações das variáveis
v1, v2, p: vetor [1..15] de inteiro
i, cont: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...

//apresenta o app
escreval ("Ex89 - Lista de Desafios")
escreval ("Função: Verifica números iguais em dois vetores e suas posições")

//recebe v1
escreval
escreval ("Vetor 1")
para i de 1 ate 15 faca
     escreva ("Digite o ", i, " valor: ")
     leia (v1[i])
fimpara

//recebe v2
escreval
escreval ("Vetor 12")
para i de 1 ate 15 faca
     escreva ("Digite o ", i, " valor: ")
     leia (v2[i])
     
     se v1[i] = v2[i] entao
        cont <- cont + 1
        p[i] <- i
     fimse
fimpara

//resultado
escreval
escreval ("Números iguais, na mesma posição: ", cont)
escreval
escreva ("Posições: ")
para i de 1 ate 15 faca
     se p[i] > 0 entao
        escreva (p[i])
     fimse
fimpara


Fimalgoritmo