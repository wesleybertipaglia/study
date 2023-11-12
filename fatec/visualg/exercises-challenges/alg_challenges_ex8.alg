Algoritmo "Ex8 - Lista de Desafios"
// Disciplina  :  [Informática e Negócios -  Lógica de Programação]
// Professor   : Francisco Antonio de Almeida  ( Xyko Almeida)
// Descrição   : Calcula a representatividade do voto de eleitores num municipio
// Autor(a)    : Wesley Bertipaglia
// Data atual  : 22/06/2021
Var
   // Seção de Declarações das variáveis
   eleitores, brancos, nulos, validos: inteiro
   percentualbranco, percentualnulo, percentualvalido: real

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   //apresenta o app
   escreval ("Ex8 - Lista de Desafios")
   escreval ("Função: Calcula a representatividade do voto num municipio")

   //recebe o numero total de eleitores
   escreva ("Digite o total de eleitores no município: ")
   leia (eleitores)

   escreval //pula linha

   //recebe o numero de votos brancos, nulos e validos
   escreva ("Digite o total de votos em branco: ")
   leia (brancos)

   escreval //pula linha

   escreva ("Digite o total de votos nulos: ")
   leia (nulos)

   escreval //pula linha

   escreva ("Digite o total de votos válidos: ")
   leia (validos)

   limpatela //limpa tela

   //calcula a representatividade dos votos
   Percentualbranco <- brancos*100/eleitores
   PErcentualnulo <- nulos*100/eleitores
   PercentualValido <- validos*100/eleitores

   //resultados
   escreval ("Total de eleitores:", eleitores)
   escreval ("Total de votos brancos:", brancos)
   escreval ("Total de votos nulos:", nulos)
   escreval ("Total de votos válidos:", validos)

   escreval //pula linha

   escreval ("Percentual de votos brancos: ", PercentualBranco)
   escreval ("Percentual de votos nulos: ", Percentualnulo)
   escreval ("Percentual de votos validos: ", Percentualvalido)

Fimalgoritmo