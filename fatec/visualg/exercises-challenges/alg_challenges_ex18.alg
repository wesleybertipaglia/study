Algoritmo "Ex18 - Lista de Desafios"
// Disciplina  :  [Informática e Negócios -  Lógica de Programação]
// Professor   : Francisco Antonio de Almeida  ( Xyko Almeida)
// Descrição   : Verifica se a pessoa está apta a votar
// Autor(a)    : Wesley Bertipaglia
// Data atual  : 22/06/2021
Var
   // Seção de Declarações das variáveis
   ano, nascimento, idade: inteiro

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   //apresenta o app
   escreval ("Ex18 - Lista de Desafios")
   escreval ("Função: Verifica se a pessoa está apta a votar")

   //recebe o ano atual
   escreva ("Digite o ano atual: ")
   leia (ano)

   //recebe o ano de nascimento da pessoa
   escreva ("Digite o ano que nasceu: ")
   leia (nascimento)

   //calcula a idade
   idade <- ano - nascimento

   //resultado
   escreval ("Sua idade é: ", idade)
   se idade >= 16 entao
      escreval ("Maiores de 16 anos já podem votar")
   senao
      escreval ("Menores de 16 anos não podem votar")
   fimse

Fimalgoritmo