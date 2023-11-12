// -----------------------------------------------
// Lab. : CONHECENDO CPP
// Ano/S: 2022/1S
// Atividade: Calcula Idade das Pessoas
// -----------------------------------------------

#include <stdio.h>

int main()
{
	int anoAtual, anoNasc, idadeAnos, idadeMeses, idadeSemanas, idadeDias;
	
	printf ("App4 - lista 1 \n");
	printf ("Fucao: Calcular a idade das pessoas \n");
	
	//Recebe o ano
	printf ("\n Digite o ano atual : ");
	scanf ("%d", &anoAtual);
	printf ("\n Digite o ano de nascimento : ");
	scanf ("%d", &anoNasc);
	
	//Calcula idade
	idadeAnos = anoAtual - anoNasc;
	idadeMeses = idadeAnos * 12;
	idadeDias =  idadeAnos * 365 ;
	idadeSemanas =  idadeDias / 7;
	
	//Saida de dados
	printf ("\n\n Ano atual: %d \n Ano nascimento: %d \n Idade em anos: %d \n Idade em Meses: %d \n Idade em semansa: %d \n Idade em dias: %d", anoAtual, anoNasc, idadeAnos, idadeMeses, idadeSemanas, idadeDias);
	
	return(0);
}