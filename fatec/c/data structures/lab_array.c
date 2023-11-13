#include <stdio.h>

// Função para calcular a soma dos elementos de um array
int somaArray(int array[], int tamanho) {
    int soma = 0;
    for (int i = 0; i < tamanho; i++) {
        soma += array[i];
    }
    return soma;
}

// Função para encontrar o valor máximo em um array
int encontrarMaximo(int array[], int tamanho) {
    int maximo = array[0];
    for (int i = 1; i < tamanho; i++) {
        if (array[i] > maximo) {
            maximo = array[i];
        }
    }
    return maximo;
}

// Função para encontrar o valor mínimo em um array
int encontrarMinimo(int array[], int tamanho) {
    int minimo = array[0];
    for (int i = 1; i < tamanho; i++) {
        if (array[i] < minimo) {
            minimo = array[i];
        }
    }
    return minimo;
}

// Função para ordenar um array em ordem crescente
void ordenarArray(int array[], int tamanho) {
    for (int i = 0; i < tamanho - 1; i++) {
        for (int j = 0; j < tamanho - i - 1; j++) {
            if (array[j] > array[j + 1]) {
                // Trocar os elementos se estiverem fora de ordem
                int temp = array[j];
                array[j] = array[j + 1];
                array[j + 1] = temp;
            }
        }
    }
}

int main() {
    int tamanho;
    
    printf("Digite o tamanho do array: ");
    scanf("%d", &tamanho);

    int meuArray[tamanho];

    printf("Digite os elementos do array:\n");
    for (int i = 0; i < tamanho; i++) {
        printf("Elemento %d: ", i + 1);
        scanf("%d", &meuArray[i]);
    }

    printf("\nSoma dos elementos: %d\n", somaArray(meuArray, tamanho));
    printf("Valor maximo: %d\n", encontrarMaximo(meuArray, tamanho));
    printf("Valor minimo: %d\n", encontrarMinimo(meuArray, tamanho));

    printf("\nArray antes da ordenacao:\n");
    for (int i = 0; i < tamanho; i++) {
        printf("%d ", meuArray[i]);
    }

    ordenarArray(meuArray, tamanho);

    printf("\nArray depois da ordenacao:\n");
    for (int i = 0; i < tamanho; i++) {
        printf("%d ", meuArray[i]);
    }

    return 0;
}
