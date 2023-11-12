// -----------------------------------------------
// Lab. : VETORES - OPERACOES DE ORDENACAO
// Ano/S: 2022/1S
// Atividade: Merge Sort - No Recursive
// -----------------------------------------------

#include <iostream>
#include <vector>

void merge(std::vector<int>& arr, int left, int mid, int right) {
    int n1 = mid - left + 1;
    int n2 = right - mid;

    // Cria arrays temporários
    std::vector<int> L(n1), R(n2);

    // Copia dados para os arrays temporários L[] e R[]
    for (int i = 0; i < n1; i++)
        L[i] = arr[left + i];
    for (int j = 0; j < n2; j++)
        R[j] = arr[mid + 1 + j];

    // Mescla os arrays temporários de volta para arr[left..right]
    int i = 0, j = 0, k = left;
    while (i < n1 && j < n2) {
        if (L[i] <= R[j]) {
            arr[k] = L[i];
            i++;
        } else {
            arr[k] = R[j];
            j++;
        }
        k++;
    }

    // Copia os elementos restantes de L[], se houver algum
    while (i < n1) {
        arr[k] = L[i];
        i++;
        k++;
    }

    // Copia os elementos restantes de R[], se houver algum
    while (j < n2) {
        arr[k] = R[j];
        j++;
        k++;
    }
}

void mergeSort(std::vector<int>& arr) {
    int n = arr.size();

    // Começa com sub-arrays de tamanho 1 e mescla-os gradualmente
    for (int currentSize = 1; currentSize < n; currentSize = 2 * currentSize) {
        // Escolhe os índices de início de sub-arrays de tamanho currentSize
        for (int leftStart = 0; leftStart < n - 1; leftStart += 2 * currentSize) {
            int mid = std::min(leftStart + currentSize - 1, n - 1);
            int rightEnd = std::min(leftStart + 2 * currentSize - 1, n - 1);

            // Mescla sub-arrays arr[leftStart...mid] e arr[mid+1...rightEnd]
            merge(arr, leftStart, mid, rightEnd);
        }
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

    mergeSort(arr);

    std::cout << "Array ordenado (Merge Sort): ";
    printArray(arr);

    return 0;
}
