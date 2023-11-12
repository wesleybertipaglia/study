// -----------------------------------------------
// Lab. : CONHECENDO CPP
// Ano/S: 2022/1S
// Atividade: Math Operations
// -----------------------------------------------

#include <stdio.h>

//Declaracao de Variaveis
int a, b, c, somaAB, multBC, subCA, contaACB;

//Programa Principal

int main() 
{
	   //entrada de dados
	   a = 	9;
	   b = 17;
	   c = -6;
	   
	   //calculo
	   somaAB = a+b;
	   multBC = b*c;
	   subCA = c-a;
	   contaACB = a+c/b;
	   
	   //saida de dados
	   printf("a + b: %d \n", somaAB);
	   printf("b * c: %d \n", multBC);
	   printf("c - a: %d \n", subCA);
	   printf("a+c/b: %d \n", contaACB);
	   
	   return 0;
}