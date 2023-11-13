#include <stdio.h>
#include <stdlib.h>

int main() {
    int tamanho;

    // Solicitar ao usuário o tamanho do array
    printf("Digite o tamanho do array: ");
    scanf("%d", &tamanho);

    // Alocar dinamicamente memória para o array
    int *meuArray = (int *)malloc(tamanho * sizeof(int));

    // Verificar se a alocação foi bem-sucedida
    if (meuArray == NULL) {
        printf("Falha na alocação de memória.\n");
        return 1; // Código de erro
    }

    // Preencher o array com números fornecidos pelo usuário
    printf("Digite os elementos do array:\n");
    for (int i = 0; i < tamanho; i++) {
        printf("Elemento %d: ", i + 1);
        scanf("%d", &meuArray[i]);
    }

    // Imprimir os elementos do array
    printf("\nElementos do array:\n");
    for (int i = 0; i < tamanho; i++) {
        printf("%d ", meuArray[i]);
    }

    // Liberar a memória alocada
    free(meuArray);

    return 0;
}
