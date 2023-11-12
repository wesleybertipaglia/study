// -----------------------------------------------
// Lab. : CONHECENDO CPP
// Ano/S: 2022/1S
// Atividade: Calcula Peso em Gramas
// -----------------------------------------------

#include <stdio.h>

int main()
{
	const float GRAMAS = 1000.00;
	float pesoKG, pesoG;

	pesoKG = 23.5;
	pesoG = pesoKG * GRAMAS;
	
	printf("\n Peso da crianca: %.2f kg\n", pesoKG);
	printf("\n Peso da crianca: %.2f g \n\n", pesoG);
	return 0;
}