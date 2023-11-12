// -----------------------------------------------
// Lab. : CONHECENDO CPP
// Ano/S: 2022/1S
// Atividade: Inverte Ordem
// -----------------------------------------------

#include <stdio.h>
#include <stdlib.h>

int main()
{
	int a, b, c;

	printf("\n Digite um numero inteiro: ");
	scanf("%d", &a);		
	printf("\n Digite outro numero inteiro: ");
	scanf("%d", &b);		
	printf("\n Digite mais um numero inteiro: ");
	scanf("%d", &c);

	system("cls");
	
	printf("\n Ordem digitada: %d %d %d \n", a, b, c);
	printf("\n Ordem inversa a ordem digitada: %d %d %d \n\n", c, b, a);
	system("pause");

	return 0;
}