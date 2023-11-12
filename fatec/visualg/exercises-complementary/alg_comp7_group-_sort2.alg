Algoritmo "Sorteador de Grupos"
// Disciplina  :  [Informática e Negócios -  Lógica de Programação]
// Professor   : Francisco Antonio de Almeida  ( Xyko Almeida)
// Descrição   : Sorteia grupos
// Autor(a)    : Wesley Bertipaglia
// Data atual  : 31/05/2021
Var
// Seção de Declarações das variáveis
grupo3p: vetor [0..12] de inteiro
grupo: vetor [1..6] de inteiro
apresentacao: vetor [0..6] de inteiro
i,j: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...
escreval ("Sorteio apresentações")
escreval

para i de 1 ate 6 faca
    escreval ("Grupo", i)

        apresentacao[1] <- randi(14)
        apresentacao[2] <- randi(14)
        apresentacao[3] <- randi(14)
        apresentacao[4] <- randi(14)
        apresentacao[5] <- randi(14)
        apresentacao[6] <- randi(14)
        
        enquanto  (apresentacao[1]<=1) faca
                  apresentacao[1] <- randi(14)
        fimenquanto
        
        enquanto (apresentacao[2] = apresentacao[1]) ou (apresentacao[2]<=1) faca
                 apresentacao[2] <- randi(14)
        fimenquanto

        enquanto (apresentacao[3] = apresentacao[2]) ou (apresentacao[3] = apresentacao[1]) ou (apresentacao[3]<=1) faca
                 apresentacao[3] <- randi(14)
        fimenquanto

        enquanto (apresentacao[4] = apresentacao[3]) ou (apresentacao[4] = apresentacao[2]) ou (apresentacao[4] = apresentacao[1]) ou (apresentacao[4]<=1) faca
                 apresentacao[4] <- randi(14)
        fimenquanto
        
        enquanto (apresentacao[5] = apresentacao[4]) ou (apresentacao[5] = apresentacao[3]) ou (apresentacao[5] = apresentacao[2])  ou (apresentacao[5] = apresentacao[1]) ou (apresentacao[5]<=1) faca
                 apresentacao[5] <- randi(14)
        fimenquanto
        
        enquanto (apresentacao[6] = apresentacao[5]) ou (apresentacao[6] = apresentacao[4]) ou (apresentacao[6] = apresentacao[3])  ou (apresentacao[6] = apresentacao[2])  ou (apresentacao[6] = apresentacao[1]) ou (apresentacao[6]<=1) faca
                 apresentacao[6] <- randi(14)
        fimenquanto
        
        para j de 1 ate 6 faca
            escreval ("Apresentação ", j, " - Tema: ", apresentacao[j])
        fimpara
    escreval
fimpara

para i de 1 ate 6 faca
    escreval ("Grupos que faram 3 perguntas na apresentação ", i)
    para i de 1 ate 2 faca
        grupo3p[i] <- randi(7)
        enquanto grupo3p[i] < 1 faca
                grupo3p[i] <- randi(7)
        fimenquanto
        
        enquanto grupo3p[i-1] = grupo3p[i] faca
                grupo3p[i] <- randi(7)
        fimenquanto
        escreval("grupo ", grupo3p[i])
    fimpara
    escreval
fimpara







Fimalgoritmo
