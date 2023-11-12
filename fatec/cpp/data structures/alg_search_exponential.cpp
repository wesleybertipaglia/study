// -----------------------------------------------
// Lab. : VETORES - OPERACOES DE BUSCA
// Ano/S: 2022/1S
// Atividade: Exponential Search
// -----------------------------------------------

#include <iostream>
#include <vector>

int binarySearch(const std::vector<int>& arr, int left, int right, int target) {
    while (left <= right) {
        int mid = left + (right - left) / 2;

        if (arr[mid] == target) {
            return mid; // Elemento encontrado
        } else if (arr[mid] < target) {
            left = mid + 1; // Descarta a metade esquerda
        } else {
            right = mid - 1; // Descarta a metade direita
        }
    }

    return -1; // Elemento não encontrado
}

int exponentialSearch(const std::vector<int>& arr, int target) {
    int size = arr.size();
    
    // Encontrar o intervalo onde o elemento pode estar presente
    int bound = 1;
    while (bound < size && arr[bound] < target) {
        bound *= 2;
    }

    // Chamar busca binária para o intervalo encontrado
    int result = binarySearch(arr, bound / 2, std::min(bound, size - 1), target);

    return result;
}

int main() {
    std::vector<int> arr = {2, 4, 6, 8, 10, 12, 14, 16, 18, 20};
    int target = 14;

    int result = exponentialSearch(arr, target);

    if (result != -1) {
        std::cout << "Elemento " << target << " encontrado no índice " << result << std::endl;
    } else {
        std::cout << "Elemento " << target << " não encontrado no array." << std::endl;
    }

    return 0;
}
