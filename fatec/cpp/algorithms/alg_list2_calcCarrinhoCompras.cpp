// -----------------------------------------------
// Lab. : PROGRAMACAO EM CPP
// Ano/S: 2022/1S
// Atividade: Calcula Carrinho de Compras
// -----------------------------------------------

#include <stdio.h>
#include <string.h>

int main()
{
	int TipoDoce, QuantidadeKg;
	float PrecoKg, TotalPagar;
	char NomeDoce[10];

	printf("\n Digite o tipo do doce: ");
	scanf("%d", &TipoDoce);
	printf("\n Digite quantidade comprada em kg: ");
	scanf("%d", &QuantidadeKg);

	//Verifica o tipo de doce
	switch (TipoDoce) {
	   case 1:
		strcpy (NomeDoce,"Trufa");
		if (QuantidadeKg <= 5) {
			PrecoKg = 25;
		} else {
			PrecoKg = 22;
		}
	   break;
	   case 2:
		strcpy (NomeDoce,"Torta");
		if (QuantidadeKg <= 5) {
			PrecoKg = 24.45;
		} else {
			PrecoKg = 22.25;
		}
	   break;
   	   case 3:
   	   	strcpy (NomeDoce,"Bolo");
		if (QuantidadeKg <= 5) {
			PrecoKg = 35;
		} else {
			PrecoKg = 30;
		}
	}

	//Calcula o valor a ser pago
	TotalPagar = QuantidadeKg * PrecoKg;

	//Saida de dados
	printf("\n Tipo de doce: %s", NomeDoce);
	printf("\n Preco do Kg %f: ", PrecoKg);
	printf("\n Quantidade comprada %d: ", QuantidadeKg);
	printf("\n Total a pagar %f: ", TotalPagar);
	
	return 0;	
}