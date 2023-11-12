Algoritmo "Ex38 - Lista de Desafios"
// Disciplina  :  [Informática e Negócios -  Lógica de Programação]
// Professor   : Francisco Antonio de Almeida  ( Xyko Almeida)
// Descrição   : Acesso à um sistema com usuário e senha
// Autor(a)    : Wesley Bertipaglia
// Data atual  : 22/06/2021
Var
   // Seção de Declarações das variáveis
   usuario, senha: inteiro

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   //apresenta o app
   escreval ("Ex38 - Lista de Desafios")
   escreval ("Função: Acesso à um sistema com usuário e senha")

   //recebe codigo de usuario
   escreva ("Código de Usuário: ")
   leia (usuario)

   //verifica se o codigo esta correto
   enquanto usuario <> 1234 faca
      escreva ("Usuário inválido! Tente novamente: ")
      leia (usuario)
   fimenquanto

   escreva ("Senha: ")
   leia (senha)

   enquanto senha <> 9999 faca
      escreva ("Senha incorreta, tente novamente: ")
      leia (senha)
   fimenquanto

   //resultado
   escreval
   escreval ("Acesso Permitido")
Fimalgoritmo