// -----------------------------------------------
// Lab. : VETORES - OPERACOES DE ORDENACAO
// Ano/S: 2022/1S
// Atividade: Bubble Sort - Right to Left
// -----------------------------------------------

#include <iostream>

void bubbleSortRightToLeft(int arr[], int n) {
    for (int i = 0; i < n - 1; i++) {
        for (int j = n - 1; j > i; j--) {
            if (arr[j] < arr[j - 1]) {
                int temp = arr[j];
                arr[j] = arr[j - 1];
                arr[j - 1] = temp;
            }
        }
    }
}

void printArray(int arr[], int size) {
    for (int i = 0; i < size; i++)
        std::cout << arr[i] << " ";
    std::cout << std::endl;
}

int main() {
    int arr[] = {64, 34, 25, 12, 22, 11, 90};
    int n = sizeof(arr) / sizeof(arr[0]);

    std::cout << "Array original: ";
    printArray(arr, n);

    bubbleSortRightToLeft(arr, n);

    std::cout << "Array ordenado (da direita para a esquerda): ";
    printArray(arr, n);

    return 0;
}
