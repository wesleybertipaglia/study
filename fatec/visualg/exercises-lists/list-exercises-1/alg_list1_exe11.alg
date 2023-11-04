Algoritmo "App11-Ex11-Lista1"
// Disciplina  :  [Informática e Negócios -  Lógica de Programação]
// Professor   : Francisco Antonio de Almeida  ( Xyko Almeida)
// Descrição   : Calcula o valor de venda baseado num percentual
// Autor(a)    : Wesley Bertipaglia
// Data atual  : 16/05/2021
Var
   // Seção de Declarações das variáveis
   produto: caractere
   custo, percentual: real
   lucro, pv: real

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   //limpa a tela
   limpatela

   //apresenta o app
   escreval ("App 11 - Lista 1")
   escreval("Função: Calcula o valor de venda baseado num percentual")

   //pula linha
   escreval ()

   //recebe o nome do produto
   escreva ("Digite o nome do produto: ")
   leia (produto)

   //recebe o custo do produto
   escreva ("Digite o custo do produto: ")
   leia (custo)

   //recebe o percentual de lucro
   escreva ("Digite o percentual de lucro pretendido: ")
   leia (percentual)

   //limpa a tela
   limpatela

   //estrutura repita até que o percentual esteja entre 30% e 60%
   se percentual < 30 entao
      repita
         repita
            escreval ("O percentual deve estar entre 30% e 60%")
            escreva ("Digite novamente: ")
            leia (percentual)
            limpatela
         ate percentual >= 30
      ate percentual <= 60
   fimse

   se percentual > 60 entao
      repita
         repita
            escreval ("O percentual deve estar entre 30% e 60%")
            escreva ("Digite novamente: ")
            leia (percentual)
            limpatela
         ate percentual >= 30
      ate percentual <= 60
   fimse


   //calcula o lucro
   lucro <- (percentual/100) * custo

   //calcula o preço de venda
   pv <- lucro + custo

   //limpa a tela
   limpatela

   //exibe os resultados
   escreval ("Produto: ", produto)
   escreval ("Custo: R$", custo)
   escreval ("Porcentagem de lucro pretendido: ", percentual, "%")
   escreval ("Preço de Venda: R$", pv)

Fimalgoritmo