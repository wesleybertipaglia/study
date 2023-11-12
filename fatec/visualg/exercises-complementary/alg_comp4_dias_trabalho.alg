Algoritmo "Dias Trabalhados"
// Disciplina  :  [Informática e Negócios -  Lógica de Programação] 
// Professor   : Francisco Antonio de Almeida  ( Xyko Almeida) 
// Descrição   : Calcula os dias trabalhados
// Autor(a)    : Wesley Bertipaglia
// Data atual  : 27/05/2021

Var
// Seção de Declarações das variáveis 
dias_ano, sabados, domingos, feriados, ferias: real
horas_trabalho, trabalho: real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
dias_ano <- 365*24
sabados <- 52*12
domingos <- 52*24
feriados <- 9*24
ferias <- 30*24
horas_trabalho <- dias_ano/3

trabalho <- horas_trabalho-sabados-domingos-feriados-ferias
trabalho <- trabalho / 24
escreval(trabalho)
Fimalgoritmo
