#include <stdio.h>
#include <stdlib.h>

int main() {
    int *array;
    int tamanho;

    // Solicita ao usuário o tamanho do array
    printf("Digite o tamanho do array: ");
    scanf("%d", &tamanho);

    // Aloca dinamicamente memória para o array
    array = (int *)malloc(tamanho * sizeof(int));

    // Verifica se a alocação foi bem-sucedida
    if (array == NULL) {
        printf("Erro na alocação de memória.\n");
        return 1; // Saída com erro
    }

    // Preenche o array com valores
    printf("Digite os elementos do array:\n");
    for (int i = 0; i < tamanho; i++) {
        scanf("%d", &array[i]);
    }

    // Imprime os elementos do array
    printf("Elementos do array:\n");
    for (int i = 0; i < tamanho; i++) {
        printf("%d ", array[i]);
    }
    printf("\n");

    // Libera a memória alocada
    free(array);

    return 0; // Saída bem-sucedida
}
