// -----------------------------------------------
// Lab. : CONHECENDO CPP
// Ano/S: 2022/1S
// Atividade: Calcula Salario
// -----------------------------------------------

#include <stdio.h>

int main()
{
	float salario, vendas, comissao, imposto, salarioFinal;	

	salario = 2500.00;
	vendas  = 10000.00;	

	comissao = vendas * 0.075; 				// 7,5%
	salarioFinal = salario + comissao;  	// salario bruto
	imposto = salarioFinal * 0.03; 			// 3%
	salarioFinal = salarioFinal - imposto; 	// salario liquido	

	printf("\n Salario                R$ %.2f", salario);
	printf("\n Total de vendas do mes R$ %.2f", vendas);
	printf("\n Comissao               R$ %.2f", comissao);
	printf("\n Impostos               R$ %.2f", imposto);
	printf("\n Salario Final          R$ %.2f \n\n", salarioFinal);	
	return 0;
}