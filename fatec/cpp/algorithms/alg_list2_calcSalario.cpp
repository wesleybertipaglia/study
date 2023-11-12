// -----------------------------------------------
// Lab. : PROGRAMACAO EM CPP
// Ano/S: 2022/1S
// Atividade: Calcula Salario
// -----------------------------------------------

#include <stdio.h>

int main()
{
    float salario, salariof, salariovenda, salariofalta, vendas, ajudaCusto, trabalhoVoluntario;
    int faltas;

    //Recebe salario
    printf("\n Digite seu salario fixo: ");
    scanf("%f", &salario);

    //Recebe total de vendas
    printf("\n Digite o valor de vendas: " );
    scanf("%f", &vendas);

    //estrutura se para vendas superiores a R$10.000,00
    if (vendas > 10000)
    {
    salariovenda = salario*0.15;
    }

    //recebe faltas
    printf("\n Digite o total de faltas ");
    scanf("%d", &faltas);

    //estrutura se para faltas superiores a 5
    if (faltas > 5)
    {
    salariofalta = salario*0.10;
    }

    //recebe as horas de trabalho voluntario
    printf("\n Digite as horas de trabalho voluntario: ");
    scanf("%f", &trabalhoVoluntario);

    //estrutura se para horas de trabalho voluntario
    if (trabalhoVoluntario > 10)
    {
        ajudaCusto = trabalhoVoluntario*50;
    }
    else
    {
        ajudaCusto = trabalhoVoluntario*40;
    }

    //soma salario + ajuda_custo
    salariof = salario + salariovenda - salariofalta + ajudaCusto;

    //apresenta os resultados
    printf("\n O salario e %f: ", salariof);
    return 0;
}