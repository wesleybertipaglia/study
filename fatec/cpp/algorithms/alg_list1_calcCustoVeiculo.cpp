// -----------------------------------------------
// Lab. : CONHECENDO CPP
// Ano/S: 2022/1S
// Atividade: Calcula Custo de um Veiculo
// -----------------------------------------------

#include <stdio.h>

int main()
{
	float impostos, custoFabrica, custoRevendedor, custoFinal;
	
	printf("App 3 - Lista 1 \n");
	printf("Funcao: Calcula custos para determinar o valor de um veiculo \n");
	
	//Recebe o custo de fabrica
	printf("\nDigite o custo de fabrica do veiculo: ");
	scanf("%f", &custoFabrica);
	
	//Calcula os custos
	custoRevendedor = custoFabrica * 0.25; //25% do custo de fabrica
	impostos = custoFabrica * 0.45; //45% do custo de fabrica

	//Realiza a soma dos custos
	custoFinal = custoFabrica + custoRevendedor + impostos;

	//Exibe os resultados
	printf ("\nCusto de Fabricacao: R$ %.2f", custoFabrica);
	printf ("\nCusto do Revendedor: R$ %.2f", custoRevendedor);
	printf ("\nImpostos: R$ %.2f", impostos);
	printf ("\nCusto para o Consumidor: R$ %.2f \n", custoFinal);
	return 0;
}