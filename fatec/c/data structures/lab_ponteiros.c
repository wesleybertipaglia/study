#include <stdio.h>

int main() {
    int minhaVariavel = 42;
    int *ponteiro = &minhaVariavel;

    // Imprimindo o endereço de uma variável usando %p
    printf("Endereço de minhaVariavel: %p\n", (void*)&minhaVariavel);
    printf("Conteúdo de ponteiro: %p\n", (void*)ponteiro);

    return 0;
}
