// -----------------------------------------------
// Lab. : CONHECENDO CPP
// Ano/S: 2022/1S
// Atividade: Calcula Salario
// -----------------------------------------------

#include <stdio.h>

//variaveis
float salario,comissao,calculo,porcentagem;

//progrma principal
int main()
{
	//entrada de dados
	salario = 2300.00;
	porcentagem =0.04;
	
	//conta
	comissao = salario * porcentagem;
	calculo = salario + comissao;
	
	
	//saida de dados
	printf("\n Salario R$ %.2f", salario);
	printf("\n Comissao R$ %.2f", comissao);
	printf ("\n Salario Final R$ %.2f", calculo);
	
	return 0;
}