#include <stdio.h>

int main() {
    unsigned int num = 10;  // Representação binária: 1010

    // Deslocamento para a esquerda
    printf("Deslocamento para a esquerda: %u\n", num << 1);  // Resultado: 20 (binário: 10100)

    // Deslocamento para a direita
    printf("Deslocamento para a direita: %u\n", num >> 1);   // Resultado: 5 (binário: 0101)

    // Operações bit a bit
    printf("AND bit a bit: %u\n", num & 5);  // Resultado: 0 (binário: 0000)
    printf("OR bit a bit: %u\n", num | 5);   // Resultado: 15 (binário: 1111)
    printf("XOR bit a bit: %u\n", num ^ 5);  // Resultado: 15 (binário: 1111)

    return 0;
}
