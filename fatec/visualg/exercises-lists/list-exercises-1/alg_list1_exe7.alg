Algoritmo "App7-Ex7-Lista1"
// Disciplina  :  [Informática e Negócios -  Lógica de Programação]
// Professor   : Francisco Antonio de Almeida  ( Xyko Almeida)
// Descrição   : Determina o total pago por um consorciado e o saldo devedor
// Autor(a)    : Wesley Bertipaglia
// Data atual  : 16/05/2021
Var
   // Seção de Declarações das variáveis
   nome, t_consorcio: caractere
   nt_prestacao, qp_paga, qp_restante: inteiro
   v_prestacao, t_pago, s_devedor, vt_consorcio: real

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   //limpa a tela
   limpatela

   //apresenta o app
   escreval ("App 7 - Lista 1")
   escreval("Função: Calcula o total pago por um consorciado e o saldo devedor")

   //pula linha
   escreval ()

   //recebe o nome do consorciado
   escreva ("Digite seu nome: ")
   leia (nome)

   //recebe o tipo de consórcio do cliente
   escreva ("Qual o tipo de consórcio? ")
   leia (t_consorcio)

   //recebe o valor da prestação
   escreva ("Digite o valor da prestação: ")
   leia (v_prestacao)

   //recebe o numero total de prestações
   escreva ("Digite o número total de prestações: ")
   leia (nt_prestacao)

   //calcula o valor total do consórcio
   vt_consorcio <- v_prestacao * nt_prestacao

   //recebe a quantidade de prestações pagas
   escreva ("Digite a quantidade de prestações pagas: ")
   leia (qp_paga)

   //calcula a quantidade de prestações restantes
   qp_restante <- nt_prestacao - qp_paga

   //calcula o total pago
   t_pago <- v_prestacao * qp_paga

   //calcula o saldo devedor
   s_devedor <- qp_restante * v_prestacao

   //limpa a tela
   limpatela

   //exibe os resultados
   escreval ("Cliente: ", nome)
   escreval ("Consórcio ", t_consorcio)
   escreval ("Valor das Prestações: ", v_prestacao)
   escreval ("Valor Total do Consórcio: R$", vt_consorcio)
   escreval ("Quantidade de Prestações: ", nt_prestacao)
   escreval ("Quantidade de Prestações Pagas: ", qp_paga)
   escreval ("Quantidade de Prestações Restantes: ", qp_restante)
   escreval()
   escreval (---------------------------------------------------)
   escreval ("Valor Pago: R$", t_pago)
   escreval ("Saldo Devedor: R$", s_devedor)
Fimalgoritmo