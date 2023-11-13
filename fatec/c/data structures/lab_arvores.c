#include <stdio.h>
#include <stdlib.h>

// Definindo a estrutura de um nó da árvore
struct NoArvore {
    int dado;
    struct NoArvore* esquerda;
    struct NoArvore* direita;
};

// Função para criar um novo nó
struct NoArvore* criarNo(int dado) {
    struct NoArvore* novoNo = (struct NoArvore*)malloc(sizeof(struct NoArvore));
    novoNo->dado = dado;
    novoNo->esquerda = NULL;
    novoNo->direita = NULL;
    return novoNo;
}

// Função para inserir um novo nó na árvore
struct NoArvore* inserir(struct NoArvore* raiz, int dado) {
    if (raiz == NULL) {
        return criarNo(dado);
    }

    if (dado < raiz->dado) {
        raiz->esquerda = inserir(raiz->esquerda, dado);
    } else if (dado > raiz->dado) {
        raiz->direita = inserir(raiz->direita, dado);
    }

    return raiz;
}

// Função para percorrer a árvore em ordem (in-order)
void percorrerEmOrdem(struct NoArvore* raiz) {
    if (raiz != NULL) {
        percorrerEmOrdem(raiz->esquerda);
        printf("%d ", raiz->dado);
        percorrerEmOrdem(raiz->direita);
    }
}

// Função para liberar a memória alocada para a árvore
void liberarArvore(struct NoArvore* raiz) {
    if (raiz != NULL) {
        liberarArvore(raiz->esquerda);
        liberarArvore(raiz->direita);
        free(raiz);
    }
}

int main() {
    struct NoArvore* raiz = NULL;

    // Exemplos de operações na árvore
    raiz = inserir(raiz, 50);
    raiz = inserir(raiz, 30);
    raiz = inserir(raiz, 70);
    raiz = inserir(raiz, 20);
    raiz = inserir(raiz, 40);

    // Percorrendo a árvore em ordem e exibindo os elementos
    printf("Árvore Binária (in-order): ");
    percorrerEmOrdem(raiz);
    printf("\n");

    // Liberando a memória alocada para a árvore
    liberarArvore(raiz);

    return 0;
}
