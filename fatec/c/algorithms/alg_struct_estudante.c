#include <stdio.h>

typedef struct {
    int   codigo;
    float PP;
    float PR;
    char  status;
} ESTUDANTE;

int main() {
    // inicio: declaracoes e atribuicoes diversas
    double d1 = -7.89;
    int    i1 = 3;
    int    i2 = 9;
    
    // Declaracao e inicializacao da estrutura ESTUDANTE
    ESTUDANTE e1 = {101, 56.70, 8.14, 'A'};

    // Impressoes iniciais
    printf("d1: %.2f\n", d1);
    printf("i1: %d\n", i1);
    printf("i2: %d\n", i2);
    printf("e1.codigo: %d\n", e1.codigo);
    printf("e1.status: %c\n", e1.status);
    printf("e1.PP: %.2f\n", e1.PP);
    printf("e1.PR: %.2f\n", e1.PR);

    // Finalizacao
    return 0;
}
