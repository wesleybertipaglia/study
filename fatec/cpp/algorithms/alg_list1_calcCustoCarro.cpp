// -----------------------------------------------
// Lab. : CONHECENDO CPP
// Ano/S: 2022/1S
// Atividade: Calcula Custo de Fabricacao de um Carro
// -----------------------------------------------

// inclusao de bibliotecas
#include <stdio.h>
 
//Programa Principal
int main()
{
	//Declaracao de variaveis
	float fabrica, Carro, Imposto;
	
	//recebe o custo de fabrica
	printf("\n Digite o custo de fabrica: ");
	scanf("%f", &fabrica);
	
	//estrutura se para
	if (fabrica <= 70000)
	{
		Imposto = 0.28*fabrica+0.45*fabrica;
	}	
		else
		{
			Imposto = 0.355*fabrica+0.526*fabrica;
		}
	
	//soma imposto + custos de fabrica
	Carro = Imposto+fabrica;
	
	//apresenta os resultados
	printf("\n Valor do carro %f:", Carro);
	printf("\n Valor dos Impostos %f:", Imposto);
	return 0;
}