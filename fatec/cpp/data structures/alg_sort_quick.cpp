// -----------------------------------------------
// Lab. : VETORES - OPERACOES DE ORDENACAO
// Ano/S: 2022/1S
// Atividade: Quick Sort
// -----------------------------------------------

#include <iostream>
#include <vector>

int partition(std::vector<int>& arr, int low, int high) {
    int pivot = arr[high]; // Escolhe o último elemento como pivô
    int i = low - 1; // Índice do menor elemento

    for (int j = low; j < high; j++) {
        // Se o elemento atual for menor ou igual ao pivô
        if (arr[j] <= pivot) {
            i++;

            // Troca arr[i] e arr[j]
            std::swap(arr[i], arr[j]);
        }
    }

    // Troca arr[i+1] e arr[high] (pivô)
    std::swap(arr[i + 1], arr[high]);

    return i + 1;
}

void quickSort(std::vector<int>& arr, int low, int high) {
    if (low < high) {
        // Encontra o índice de partição, arr[p] está agora no lugar certo
        int partitionIndex = partition(arr, low, high);

        // Ordena os elementos antes e depois da partição
        quickSort(arr, low, partitionIndex - 1);
        quickSort(arr, partitionIndex + 1, high);
    }
}

void printArray(const std::vector<int>& arr) {
    for (int num : arr)
        std::cout << num << " ";
    std::cout << std::endl;
}

int main() {
    std::vector<int> arr = {64, 34, 25, 12, 22, 11, 90};

    std::cout << "Array original: ";
    printArray(arr);

    quickSort(arr, 0, arr.size() - 1);

    std::cout << "Array ordenado (Quick Sort): ";
    printArray(arr);

    return 0;
}
