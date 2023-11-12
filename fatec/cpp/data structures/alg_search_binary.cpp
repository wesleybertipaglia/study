// -----------------------------------------------
// Lab. : VETORES - OPERACOES DE BUSCA
// Ano/S: 2022/1S
// Atividade: Binary Search
// -----------------------------------------------

#include <iostream>
#include <vector>

int binarySearch(const std::vector<int>& arr, int target) {
    int left = 0;
    int right = arr.size() - 1;

    while (left <= right) {
        int mid = left + (right - left) / 2;

        // Verifica se o elemento está presente no meio
        if (arr[mid] == target) {
            return mid;
        }

        // Se o elemento for menor, ignora a metade direita
        else if (arr[mid] > target) {
            right = mid - 1;
        }

        // Se o elemento for maior, ignora a metade esquerda
        else {
            left = mid + 1;
        }
    }

    // Se o elemento não estiver presente no array
    return -1;
}

int main() {
    std::vector<int> arr = {11, 22, 34, 45, 50, 55, 60, 70, 80, 90};
    int target = 55;

    int result = binarySearch(arr, target);

    if (result != -1) {
        std::cout << "Elemento " << target << " encontrado no índice " << result << std::endl;
    } else {
        std::cout << "Elemento " << target << " não encontrado no array." << std::endl;
    }

    return 0;
}
