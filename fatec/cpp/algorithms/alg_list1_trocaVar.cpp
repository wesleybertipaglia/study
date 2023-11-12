// -----------------------------------------------
// Lab. : CONHECENDO CPP
// Ano/S: 2022/1S
// Atividade: Troca Variavel
// -----------------------------------------------

#include <stdio.h>

int main()
{
	int a, b, aux;
	
	printf("App 1 - Lista 1");;
	printf("\nFuncao: Realiza a troca dos valores das variaveis a e b \n");

	a = 5;
	b = 10;

	printf("Valores das Variaveis \n");
	printf("A: %d\n", a);
	printf("B: %d\n", b);

	//Realiza a troca dos valores das vari�veis
	aux = a;
	a = b;  
	b = aux;

	printf("Valores Trocados\n");
	printf("\nA: %d", a);
	printf("\nB: %d", b);
	return 0;
}