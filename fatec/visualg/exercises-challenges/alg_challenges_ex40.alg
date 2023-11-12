Algoritmo "Ex40 - Lista de Desafios"
// Disciplina  :  [Informática e Negócios -  Lógica de Programação]
// Professor   : Francisco Antonio de Almeida  ( Xyko Almeida)
// Descrição   : Calcula o custo de uma compra
// Autor(a)    : Wesley Bertipaglia
// Data atual  : 22/06/2021
Var
// Seção de Declarações das variáveis
nome: caractere
quantidade: inteiro
pund, desconto, total, pagar: real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...

//apresenta o app
escreval ("Ex40 - Lista de Desafios")
escreval ("Função: Calcula o custo de uma compra")

//recebe a descrição do produto
escreva ("Digite o nome do produto: ")
leia (nome)

escreva ("Digite a quantidade adquirida: ")
leia (quantidade)

escreva ("Digite o preço unitário: ")
leia (pund)

//calcula o total antes do desconto
total <- quantidade * pund

//calcula o desconto
se quantidade <= 5 entao
   desconto <- total*(2/100)
fimse

se (quantidade > 5) e (quantidade<=10) entao
   desconto <- total*(3/100)
fimse

se quantidade > 10 entao
   desconto <- total* (5/100)
fimse

//resultado
pagar <- total - desconto

escreval //pula linha
escreval ("Total: ", total)
escreval ("Desconto: ", desconto)
escreval ("A pagar: ", pagar)

Fimalgoritmo