#include <stdio.h>

int main() {
    // declaracoes e atribuicoes diversas
    int y1 = 3;
    int *p1 = &y1;
    int **q1 = &p1;
    int y2 = 7;
    int *p2 = &y2;
    int **q2 = &p2;

    // impressao
    printf("y1 %p, p1 %p, y2 %p, p2 %p, q1 %p, q2 %p \n", (void*)&y1, (void*)&p1, (void*)&y2, (void*)&p2, (void*)&q1, (void*)&q2);

    // continuacao do programa
    printf("\nValores originais:\n");
    printf("y1: %d, *p1: %d, **q1: %d\n", y1, *p1, **q1);
    printf("y2: %d, *p2: %d, **q2: %d\n", y2, *p2, **q2);

    // Modificacao dos valores
    *p1 = 10;
    **q2 = 15;

    // Impressao dos valores modificados
    printf("\nValores modificados:\n");
    printf("y1: %d, *p1: %d, **q1: %d\n", y1, *p1, **q1);
    printf("y2: %d, *p2: %d, **q2: %d\n", y2, *p2, **q2);

    // finalizacao
    return 0;
}
