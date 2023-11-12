// -----------------------------------------------
// Lab. : VETORES - OPERACOES DE BUSCA
// Ano/S: 2022/1S
// Atividade: Binary Search
// -----------------------------------------------

#include <iostream>
#include <vector>

int interpolationSearch(const std::vector<int>& arr, int target) {
    int left = 0;
    int right = arr.size() - 1;

    while (left <= right && target >= arr[left] && target <= arr[right]) {
        // Fórmula de interpolação para calcular a posição aproximada do alvo
        int pos = left + ((target - arr[left]) * (right - left)) / (arr[right] - arr[left]);

        // Se o elemento está presente no cálculo de posição
        if (arr[pos] == target) {
            return pos;
        }

        // Se o elemento for menor, ignora a metade direita
        else if (arr[pos] < target) {
            left = pos + 1;
        }

        // Se o elemento for maior, ignora a metade esquerda
        else {
            right = pos - 1;
        }
    }

    // Se o elemento não estiver presente no array
    return -1;
}

int main() {
    std::vector<int> arr = {10, 20, 30, 40, 50, 60, 70, 80, 90, 100};
    int target = 60;

    int result = interpolationSearch(arr, target);

    if (result != -1) {
        std::cout << "Elemento " << target << " encontrado no índice " << result << std::endl;
    } else {
        std::cout << "Elemento " << target << " não encontrado no array." << std::endl;
    }

    return 0;
}
