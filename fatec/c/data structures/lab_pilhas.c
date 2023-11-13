#include <stdio.h>
#include <stdlib.h>

#define TAMANHO_MAX 5

// Definindo a estrutura da pilha
struct Pilha {
    int itens[TAMANHO_MAX];
    int topo;
};

// Função para inicializar a pilha
void inicializarPilha(struct Pilha* pilha) {
    pilha->topo = -1;
}

// Função para verificar se a pilha está vazia
int estaVazia(struct Pilha* pilha) {
    return (pilha->topo == -1);
}

// Função para verificar se a pilha está cheia
int estaCheia(struct Pilha* pilha) {
    return (pilha->topo == TAMANHO_MAX - 1);
}

// Função para empilhar um elemento
void push(struct Pilha* pilha, int elemento) {
    if (estaCheia(pilha)) {
        printf("Erro: a pilha está cheia\n");
        return;
    }

    pilha->itens[++(pilha->topo)] = elemento;
    printf("Elemento %d empilhado\n", elemento);
}

// Função para desempilhar um elemento
int pop(struct Pilha* pilha) {
    if (estaVazia(pilha)) {
        printf("Erro: a pilha está vazia\n");
        return -1; // Valor de erro
    }

    int elementoDesempilhado = pilha->itens[pilha->topo--];
    printf("Elemento %d desempilhado\n", elementoDesempilhado);

    return elementoDesempilhado;
}

int main() {
    struct Pilha minhaPilha;
    inicializarPilha(&minhaPilha);

    // Exemplos de operações de pilha
    push(&minhaPilha, 10);
    push(&minhaPilha, 20);
    push(&minhaPilha, 30);

    pop(&minhaPilha);
    pop(&minhaPilha);
    pop(&minhaPilha);

    return 0;
}
