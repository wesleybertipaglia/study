#include <stdio.h>
#include <stdlib.h>

int main() {
    int *meuV1, *meuV2;

    // aloca memoria heap
    meuV1 = (int *)malloc(3 * sizeof(int));

    // verifica se a alocacao foi bem-sucedida
    if (meuV1 == NULL) {
        printf("Erro na alocacao de memoria para meuV1\n");
        return 1; // codigo de erro
    }

    // atribui valor aos tres elementos de 'meuV1'
    meuV1[0] = 10;
    meuV1[1] = 40;
    meuV1[2] = 70;

    // ideia e copiar o 'meuV1' em 'meuV2'
    meuV2 = (int *)malloc(3 * sizeof(int));

    // verifica se a alocacao foi bem-sucedida
    if (meuV2 == NULL) {
        printf("Erro na alocacao de memoria para meuV2\n");

        // libera a memoria alocada anteriormente
        free(meuV1);
        return 1; // codigo de erro
    }

    // copia os valores de 'meuV1' para 'meuV2'
    for (int i = 0; i < 3; i++) {
        meuV2[i] = meuV1[i];
    }

    // altera valor de um elemento de 'meuV1'
    meuV1[0] = 20;

    // impressao
    printf("meuV1: %2d, %2d, %2d - meuV2: %2d, %2d, %2d\n",
           meuV1[0], meuV1[1], meuV1[2], meuV2[0], meuV2[1], meuV2[2]);

    // libera a memoria alocada
    free(meuV1);
    free(meuV2);

    // finalizacao
    return 0;
}