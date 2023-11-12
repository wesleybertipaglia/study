Algoritmo "Calcula Salario"
// Disciplina  : Algoritmo e Programação de Computadores
// Professor   : Valéria Volpo
// Descrição   : Calcula o salário e os impostos de um funcionário
// Autor(a)    : Wesley Bertipaglia
// Data atual  : 23/10/2021
Var
   // Seção de Declarações das variáveis
   Faltas, HoraExtra, FilhosMenorde15: inteiro
   SalarioInicial, ValorVenda, BonusDesempenho, BonusHoraExtra, BolsaEducacao, DescontoFaltas, SalarioFinal, ImpostoPago: real

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   // Entrada de dados
   escreva("Digite seu salario inicial: ")
   leia(SalarioInicial)
   escreva("Quanto voce vendeu no mes? " )
   leia(ValorVenda)
   escreva("Quantos dias voce faltou? ")
   leia(Faltas)
   escreva("Quantas horas voce fez de trabalho voluntario? ")
   leia(HoraExtra)
   escreva("Quantidade de filhos menores de 15 anos: ")
   leia(FilhosMenorde15)

   //Bonus por desempenho
   se ValorVenda > 10000 entao
      BonusDesempenho <- SalarioInicial * 0.15
   fimse

   //Bonus por hora extra
   se HoraExtra >= 10 entao
      BonusHoraExtra <- 10 * HoraExtra
   senao
      BonusHoraExtra <- 8 * HoraExtra
   fimse

   //Bolsa Educação
   BolsaEducacao <- FilhosMenorde15 * 250

   //Desconto por faltas
   se Faltas > 5 entao
      DescontoFaltas <- SalarioInicial * 0.10
   fimse
   se (Faltas > 0) entao
      DescontoFaltas <- SalarioInicial * 0.025
   fimse

   //Calcula o salario final
   SalarioFinal <- SalarioInicial + BonusDesempenho + BonusHoraExtra + BolsaEducacao - DescontoFaltas

   //Calcula os Impostos
   se (SalarioFinal <= 2460) entao
      ImpostoPago <- SalarioFinal * 0.05
   fimse
   se (SalarioFinal > 2460) e (SalarioFinal <= 5500) entao
      ImpostoPago <- SalarioFinal * 0.07
   fimse
   se (SalarioFinal > 5500) e (SalarioFinal <= 10750) entao
      ImpostoPago <- SalarioFinal * 0.09
   fimse
   se (SalarioFinal > 10750) entao
      ImpostoPago <- SalarioFinal * 0.11
   fimse

   //Saída de dados
   escreval("Salario Final: ", SalarioFinal)
   escreval("Imposto Pago: ", ImpostoPago)

Fimalgoritmo
