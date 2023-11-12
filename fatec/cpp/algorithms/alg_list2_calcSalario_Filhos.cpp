// -----------------------------------------------
// Lab. : PROGRAMACAO EM CPP
// Ano/S: 2022/1S
// Atividade: Calcula Salario de Colaboradores com Filhos
// -----------------------------------------------

#include <stdio.h>

int main()
{
	int Faltas, HoraExtra, FilhosMenorde15;
	float SalarioInicial, ValorVenda, BonusDesempenho, BonusHoraExtra, BolsaEducacao, DescontoFaltas, SalarioFinal, ImpostoPago;

	printf("\n Digite seu salario inicial: ");
	scanf("%f", &SalarioInicial);
	printf("\n Quanto voce vendeu no mes? " );
	scanf("%f", &ValorVenda);
	printf("\n Quantos dias voce faltou? ");
	scanf("%d", &Faltas);
	printf("\n Quantas horas voce fez de trabalho voluntario? ");
	scanf("%d", &HoraExtra);
	printf("\n Quantidade de filhos menores de 15 anos: ");
	scanf("%d", &FilhosMenorde15);

	//Bonus por desempenho
	if (ValorVenda > 10000)
	{
		BonusDesempenho = SalarioInicial * 0.15;
	}

	//Bonus por hora extra
	if (HoraExtra >= 10)
	{
		BonusHoraExtra = 10 * HoraExtra;
	} 
	else
	{
		BonusHoraExtra = 8 * HoraExtra;
	}

    //Bolsa Educacao
	BolsaEducacao = FilhosMenorde15 * 250;

	//Desconto por faltas
	if (Faltas > 5)
	{
		DescontoFaltas = SalarioInicial * 0.10;
	} 
	if (Faltas > 0)
	{
		DescontoFaltas = SalarioInicial * 0.025;
	}

	//Calculo salario final
	SalarioFinal = SalarioInicial + BonusDesempenho + BonusHoraExtra + BolsaEducacao - DescontoFaltas;

    //Calculo Impostos
    if (SalarioFinal <= 2460)
	{
		ImpostoPago = SalarioFinal * 0.05;
	}
	if (SalarioFinal > 2460 && SalarioFinal <= 5500)
	{
		ImpostoPago = SalarioFinal * 0.07;
	}
	if (SalarioFinal > 5500 && SalarioFinal <= 10750)
	{
		ImpostoPago = SalarioFinal * 0.09;
	}
	if (SalarioFinal > 10750)
	{
		ImpostoPago = SalarioFinal * 0.11;
	}

	//Saida de dados
	printf("\n Seu salario e %.2f: ", SalarioFinal);
	printf("\n Imposto Pago %.2f: ", ImpostoPago);
	return 0;
}