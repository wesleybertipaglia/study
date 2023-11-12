// -----------------------------------------------
// Lab. : CONHECENDO CPP
// Ano/S: 2022/1S
// Atividade: Exibe Informacoes de uma Pessoa
// -----------------------------------------------

#include <stdio.h>

int main()
{
	//declaracao de variaveis
	char nome[20];
	int idade;
	float salario;
	
	//apresentacao do programa
	printf("App 1 - Lista 1 \n");
	printf("Funcao: Esse app recebe e mostra variaveis nome, idade e salario \n");

	//recebe o nome do usuario
	printf("Ola, digite seu nome: \n");
	gets(nome);

	//recebe a idade do usuario
	printf ("Agora, digite sua idade: \n");
	scanf("%d", &idade);

	//recebe o salario do usuario
	printf ("Por fim, digite seu salario: \n");
	scanf("%f", &salario);

	//mostra as informacoes recolhidas
	printf ("\nNome: %s \n", nome);
	printf ("Idade: %d \n", idade);
	printf ("Salario: R$ %f \n", salario);
	return 0;
}