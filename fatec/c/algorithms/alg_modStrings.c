#include <stdio.h>
#include <stdlib.h>

int main() {
    int i;  // declaração de auxiliar

    typedef struct {  // definição de tipo PROFESSOR
        int codigo;
        char *nome;
    } PROFESSOR;

    PROFESSOR *p;  // declaração de ponteiro para PROFESSOR
    p = (PROFESSOR *)malloc(2 * sizeof(PROFESSOR));  // alocação dinâmica

    for (i = 0; i < 2; i++) {  // preenchimento dos conteúdos dos campos
        p[i].codigo = i + 1;
        p[i].nome = (char *)malloc(16 * sizeof(char));
    }

    strcpy(p[0].nome, "Carlos Magnus\0");        // atribuição de valor a string
    strcpy(p[1].nome, "Wesley Bertipaglia\0");

    // Impressão dos valores originais
    printf("Valores Originais:\n");
    for (i = 0; i < 2; i++) {
        printf("Código: %d, Nome: %s\n", p[i].codigo, p[i].nome);
    }

    // Modificação dos valores
    strcpy(p[0].nome, "Carlos Magnus Filho\0");
    p[1].codigo = 3;

    // Impressão dos valores modificados
    printf("\nValores Modificados:\n");
    for (i = 0; i < 2; i++) {
        printf("Código: %d, Nome: %s\n", p[i].codigo, p[i].nome);
    }

    // Liberação de memória alocada
    for (i = 0; i < 2; i++) {
        free(p[i].nome);
    }
    free(p);

    // finalização
    return 0;
}
