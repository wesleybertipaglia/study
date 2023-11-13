#include <stdio.h>
#include <stdlib.h>

#define TAMANHO_MAX 5

// Definindo a estrutura da fila
struct Fila {
    int itens[TAMANHO_MAX];
    int frente, tras;
};

// Função para inicializar a fila
void inicializarFila(struct Fila* fila) {
    fila->frente = -1;
    fila->tras = -1;
}

// Função para verificar se a fila está vazia
int estaVazia(struct Fila* fila) {
    return (fila->frente == -1);
}

// Função para verificar se a fila está cheia
int estaCheia(struct Fila* fila) {
    return ((fila->tras + 1) % TAMANHO_MAX == fila->frente);
}

// Função para enfileirar um elemento
void enqueue(struct Fila* fila, int elemento) {
    if (estaCheia(fila)) {
        printf("Erro: a fila está cheia\n");
        return;
    }

    if (estaVazia(fila)) {
        fila->frente = 0;
    }

    fila->tras = (fila->tras + 1) % TAMANHO_MAX;
    fila->itens[fila->tras] = elemento;
    printf("Elemento %d enfileirado\n", elemento);
}

// Função para desenfileirar um elemento
int dequeue(struct Fila* fila) {
    if (estaVazia(fila)) {
        printf("Erro: a fila está vazia\n");
        return -1; // Valor de erro
    }

    int elementoDesenfileirado = fila->itens[fila->frente];
    if (fila->frente == fila->tras) {
        // Último elemento da fila foi desenfileirado, resetando a fila
        fila->frente = -1;
        fila->tras = -1;
    } else {
        fila->frente = (fila->frente + 1) % TAMANHO_MAX;
    }

    printf("Elemento %d desenfileirado\n", elementoDesenfileirado);
    return elementoDesenfileirado;
}

int main() {
    struct Fila minhaFila;
    inicializarFila(&minhaFila);

    // Exemplos de operações de fila
    enqueue(&minhaFila, 10);
    enqueue(&minhaFila, 20);
    enqueue(&minhaFila, 30);

    dequeue(&minhaFila);
    dequeue(&minhaFila);
    dequeue(&minhaFila);

    return 0;
}
