// -----------------------------------------------
// Lab. : VETORES - OPERACOES DE BUSCA
// Ano/S: 2022/1S
// Atividade: Linear Search
// -----------------------------------------------

#include <iostream>

int linearSearch(int arr[], int n, int key) {
    for (int i = 0; i < n; i++) {
        if (arr[i] == key) {
            return i; // Elemento encontrado, retorna o índice
        }
    }
    return -1; // Elemento não encontrado
}

int main() {
    int arr[] = {64, 34, 25, 12, 22, 11, 90};
    int n = sizeof(arr) / sizeof(arr[0]);

    int key = 22;

    std::cout << "Array: ";
    for (int i = 0; i < n; i++) {
        std::cout << arr[i] << " ";
    }
    std::cout << std::endl;

    int result = linearSearch(arr, n, key);

    if (result != -1) {
        std::cout << "Elemento " << key << " encontrado no índice " << result << std::endl;
    } else {
        std::cout << "Elemento " << key << " não encontrado no array." << std::endl;
    }

    return 0;
}
