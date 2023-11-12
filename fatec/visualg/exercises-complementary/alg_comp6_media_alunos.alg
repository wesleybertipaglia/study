Algoritmo "Media dos Alunos"
// Disciplina  :  [Informática e Negócios -  Lógica de Programação] 
// Professor   : Francisco Antonio de Almeida  ( Xyko Almeida) 
// Descrição   : Calcula média dos alunos
// Autor(a)    : Wesley Bertipaglia
// Data atual  : 29/04/2021
Var
// Seção de Declarações das variáveis 
nome: caractere
nota1, nota2, media: real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval ("Bem Vindo Ao Sistema de Notas Integrado")

//recebe o nome do aluno
escreva ("Digite o nome do aluno: ")
leia (nome)
escreval()

//recebe a primeira nota do aluno
escreva ("Digite a primeira nota: ")
leia (nota1)
escreval()

//recebe a segunda nota do aluno
escreva ("Digite a segunda nota: ")
leia (nota2)
escreval()

//calcula a media do aluno
media <- ((nota1 + nota2)/2)

//mostra os resultados
escreval (nome)
escreval ("Média: ", media)

//estrutura se maior que 6 aprovado
se media >= 6 entao
escreval ("Parabéns, aprovado(a)!")
senao
escreval ("Reprovado(a) por notas!")
fimse

Fimalgoritmo
