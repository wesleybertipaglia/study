// -----------------------------------------------
// Lab. : VETORES - OPERACOES DE BUSCA
// Ano/S: 2022/1S
// Atividade: Jump Search
// -----------------------------------------------

#include <iostream>
#include <vector>
#include <cmath>

int linearSearch(const std::vector<int>& arr, int left, int right, int target) {
    for (int i = left; i <= std::min(right, static_cast<int>(arr.size()) - 1); ++i) {
        if (arr[i] == target) {
            return i; // Elemento encontrado
        }
    }
    return -1; // Elemento não encontrado
}

int jumpSearch(const std::vector<int>& arr, int target) {
    int size = arr.size();
    
    // Definir o tamanho do bloco como a raiz quadrada do tamanho do array
    int blockSize = static_cast<int>(sqrt(size));

    // Encontrar o bloco onde o elemento pode estar presente
    int blockIndex = 0;
    while (blockIndex < size && arr[blockIndex] < target) {
        blockIndex += blockSize;
    }

    // Chamar busca linear para o bloco encontrado
    int result = linearSearch(arr, blockIndex - blockSize, blockIndex, target);

    return result;
}

int main() {
    std::vector<int> arr = {2, 4, 6, 8, 10, 12, 14, 16, 18, 20};
    int target = 14;

    int result = jumpSearch(arr, target);

    if (result != -1) {
        std::cout << "Elemento " << target << " encontrado no índice " << result << std::endl;
    } else {
        std::cout << "Elemento " << target << " não encontrado no array." << std::endl;
    }

    return 0;
}
