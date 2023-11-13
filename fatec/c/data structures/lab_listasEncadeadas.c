#include <stdio.h>
#include <stdlib.h>

// Definindo a estrutura de um nó da lista encadeada
struct No {
    int dado;
    struct No* proximo;
};

// Função para adicionar um novo nó no final da lista
void adicionarNo(struct No** cabeca, int novoDado) {
    struct No* novoNo = (struct No*)malloc(sizeof(struct No));
    struct No* ultimo = *cabeca;

    novoNo->dado = novoDado;
    novoNo->proximo = NULL;

    if (*cabeca == NULL) {
        *cabeca = novoNo;
        return;
    }

    while (ultimo->proximo != NULL) {
        ultimo = ultimo->proximo;
    }

    ultimo->proximo = novoNo;
}

// Função para exibir os elementos da lista encadeada
void exibirLista(struct No* no) {
    while (no != NULL) {
        printf("%d -> ", no->dado);
        no = no->proximo;
    }
    printf("NULL\n");
}

// Função para liberar a memória alocada para a lista encadeada
void liberarLista(struct No* no) {
    struct No* temp;

    while (no != NULL) {
        temp = no;
        no = no->proximo;
        free(temp);
    }
}

int main() {
    // Inicializando a cabeça da lista como NULL
    struct No* cabeca = NULL;

    // Adicionando elementos à lista encadeada
    adicionarNo(&cabeca, 10);
    adicionarNo(&cabeca, 20);
    adicionarNo(&cabeca, 30);

    // Exibindo os elementos da lista encadeada
    printf("Lista Encadeada: ");
    exibirLista(cabeca);

    // Liberando a memória alocada para a lista encadeada
    liberarLista(cabeca);

    return 0;
}
