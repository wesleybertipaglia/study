// -----------------------------------------------
// Lab. : CONHECENDO C
// Ano/S: 2021/2S
// Atividade: Calcula Hora Extra
// -----------------------------------------------

#include <stdio.h>

int main()
{
	float Faltas, HoraExtra, SalarioInicial, ValorVenda, SalarioFinal;
	
	printf("\n Digite seu salario inicial: ");
	scanf("%f", &SalarioInicial);
	
	printf("\n Quanto voce vendeu no mes? " );
	scanf("%f", &ValorVenda);
	
	printf("\n Quantos dias voce faltou? ");
	scanf("%f", &Faltas);
	
	printf("\n Quantas horas voce fez de trabalho voluntario? ");
	scanf("%f", &HoraExtra);
	
	if (ValorVenda > 10000)
	{
		SalarioFinal = SalarioInicial + (SalarioInicial * 0.15);
	}
	if (Faltas > 5)
	{
		SalarioFinal = SalarioInicial - (SalarioInicial * 0.10);
	}	
	if (HoraExtra >= 10)
	{
		SalarioFinal = SalarioInicial + (50 * HoraExtra);
	}
	else
	{
		SalarioFinal = SalarioInicial + (40 * HoraExtra);
	}
	
	printf("\n Seu salario e %f: ", &SalarioFinal);		
	return 0;
}