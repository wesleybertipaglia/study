// -----------------------------------------------
// Lab. : VETORES - OPERACOES DE ORDENACAO
// Ano/S: 2022/1S
// Atividade: Heap Sort
// -----------------------------------------------

#include <iostream>
#include <vector>

void maxHeapify(std::vector<int>& arr, int n, int i) {
    int largest = i; // Inicializa o maior como raiz
    int left = 2 * i + 1; // Índice do filho à esquerda
    int right = 2 * i + 2; // Índice do filho à direita

    // Se o filho à esquerda é maior que a raiz
    if (left < n && arr[left] > arr[largest])
        largest = left;

    // Se o filho à direita é maior que o maior até agora
    if (right < n && arr[right] > arr[largest])
        largest = right;

    // Se o maior não é a raiz
    if (largest != i) {
        std::swap(arr[i], arr[largest]);

        // Recursivamente faz heapify no subárvore afetado
        maxHeapify(arr, n, largest);
    }
}

void heapSort(std::vector<int>& arr) {
    int n = arr.size();

    // Constrói um heap máximo (reorganiza o array)
    for (int i = n / 2 - 1; i >= 0; i--)
        maxHeapify(arr, n, i);

    // Extrai elementos um por um do heap
    for (int i = n - 1; i > 0; i--) {
        // Move a raiz atual para o final
        std::swap(arr[0], arr[i]);

        // Chama maxHeapify na raiz reduzida
        maxHeapify(arr, i, 0);
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

    heapSort(arr);

    std::cout << "Array ordenado (Heap Sort): ";
    printArray(arr);

    return 0;
}
