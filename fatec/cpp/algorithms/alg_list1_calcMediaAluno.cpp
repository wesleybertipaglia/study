// -----------------------------------------------
// Lab. : CONHECENDO CPP
// Ano/S: 2022/1S
// Atividade: Calcula Media Aluno
// -----------------------------------------------

#include <stdio.h>

int main()
{
	char nome[20];
	int I;
	float prova[3];
	float media;

	printf("App 4 - Lista 1 \n");
	printf("Funcao: Calcula a media final ponderada de um aluno \n");

	//recebe o nome do aluno
	printf("Digite seu nome: ");
	scanf("%s", &nome);

	//recebe as notas do aluno
	for(I=0; I<=2; I++)
	{
		printf("Digite a nota da prova: ");
		scanf("%f", &prova[I]);	
	}

	//calcula a m�dia ponderada
	media = (prova[0]*2+prova[1]*3+prova[2]*5)/10;

	//exibe os resultados
	printf("\nAluno: %s", nome);
	printf("\nNota 1 (peso 2): %f", prova[0]);
	printf("\nNota 2 (peso 3): %f", prova[1]);
	printf("\nNota 3 (peso 5): %f", prova[2]);
	printf("\n\nMedia Final: %f \n", media);

	if(media >= 6)
	{
		printf("Situacao: Aprovado");
	}
	else
	{
		printf("Situacao: Reprovado");	
	}
	return(0);
}