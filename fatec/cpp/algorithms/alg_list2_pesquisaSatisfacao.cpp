// -----------------------------------------------
// Lab. : PROGRAMACAO EM CPP
// Ano/S: 2022/1S
// Atividade: Pesquisa de Satisfacao
// -----------------------------------------------

#include <stdio.h>
#include <string.h>

int main()
{
	//declaracao das variaveis
	char sexo[5][0];
	char resposta[5][0];
	int sim, nao, mas, fem, femsim, i;
	float somarespostas, porcentagemsim, porcentagemnao;
	bool gostaram;

	
	//estrutura de repeticao para perguntas
	for (i=0; i<=5; i++) 
	{
	    printf("\n Sexo (F/M): ");    //recebe o sexo
	    fflush(stdin);
	    fgets(sexo[i], sizeof(sexo[i]), stdin);   //entrada de string = sexo
	    printf("\n Gostou do novo produto? (S/N) ");  //recebe a resposta da pesquisa
	    fflush(stdin);
	    fgets(resposta[i], sizeof(resposta[i]), stdin);
	}
	
	for (i=0; i<5; i++)
	{
		if (sexo[i] == "M")
		{
	      mas = mas + 1;
		}
	      else
		  {
		  fem = fem + 1;
		  }
		  if (resposta[i] == "S")   //recebe a resposta da pesquisa
		{
		sim = sim + 1;	
		}
	      else
		  {
		  nao = nao + 1;	
		  }
	    
	    if (sexo[i] == "F" || resposta[i] == "S") 
		{
		femsim = femsim + 1;	
		}
	}
	    

	//porcentagem de respostas
	somarespostas = sim+nao;
	
	porcentagemsim = (sim*100)/somarespostas; //porcentagem sim
	
	porcentagemnao = (nao*100)/somarespostas; //porcentagem n�o
	
	if (porcentagemsim >= 65)
	{
	gostaram = "sim";	
	}
	  else 
	  {
	gostaram = "nao";	  
	  }

	//apresenta os resultados
	printf ("\n Numero de pessoas que responderam sim: %d ", sim);
	printf ("\n Numero de pessoas que responderam nao: %d ", nao);
	printf ("\n Numero de mulheres que responderam sim: %d ", femsim);
	printf ("\n Total de homens: %d ", mas);
	printf ("\n Total de mulheres: %d ", fem);
	printf ("\n As pessoas gostaram do produto? %c ", gostaram);
	
	return 0;
}