#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define TAMANHO_TABELA 10

// Definindo a estrutura de um nó da lista encadeada para tratar colisões
struct NoLista {
    int chave;
    int valor;
    struct NoLista* proximo;
};

// Definindo a estrutura da tabela hash
struct TabelaHash {
    struct NoLista* lista[TAMANHO_TABELA];
};

// Função para criar uma tabela hash
struct TabelaHash* criarTabela() {
    struct TabelaHash* tabela = (struct TabelaHash*)malloc(sizeof(struct TabelaHash));
    for (int i = 0; i < TAMANHO_TABELA; i++) {
        tabela->lista[i] = NULL;
    }
    return tabela;
}

// Função de hash simples
int funcaoHash(int chave) {
    return chave % TAMANHO_TABELA;
}

// Função para inserir um elemento na tabela hash
void inserir(struct TabelaHash* tabela, int chave, int valor) {
    int indice = funcaoHash(chave);

    // Criando um novo nó
    struct NoLista* novoNo = (struct NoLista*)malloc(sizeof(struct NoLista));
    novoNo->chave = chave;
    novoNo->valor = valor;
    novoNo->proximo = NULL;

    // Inserindo na lista encadeada (tratamento de colisões)
    if (tabela->lista[indice] == NULL) {
        tabela->lista[indice] = novoNo;
    } else {
        struct NoLista* atual = tabela->lista[indice];
        while (atual->proximo != NULL) {
            atual = atual->proximo;
        }
        atual->proximo = novoNo;
    }

    printf("Elemento (%d, %d) inserido na posição %d da tabela.\n", chave, valor, indice);
}

// Função para buscar um elemento na tabela hash
int buscar(struct TabelaHash* tabela, int chave) {
    int indice = funcaoHash(chave);

    // Procurando na lista encadeada (tratamento de colisões)
    struct NoLista* atual = tabela->lista[indice];
    while (atual != NULL) {
        if (atual->chave == chave) {
            printf("Elemento com chave %d encontrado. Valor: %d\n", chave, atual->valor);
            return atual->valor;
        }
        atual = atual->proximo;
    }

    printf("Elemento com chave %d não encontrado.\n", chave);
    return -1; // Valor de erro
}

// Função para excluir um elemento na tabela hash
void excluir(struct TabelaHash* tabela, int chave) {
    int indice = funcaoHash(chave);

    // Excluindo na lista encadeada (tratamento de colisões)
    struct NoLista* anterior = NULL;
    struct NoLista* atual = tabela->lista[indice];

    while (atual != NULL) {
        if (atual->chave == chave) {
            if (anterior == NULL) {
                tabela->lista[indice] = atual->proximo;
            } else {
                anterior->proximo = atual->proximo;
            }
            free(atual);
            printf("Elemento com chave %d excluído.\n", chave);
            return;
        }
        anterior = atual;
        atual = atual->proximo;
    }

    printf("Elemento com chave %d não encontrado para exclusão.\n", chave);
}

int main() {
    // Criando uma tabela hash
    struct TabelaHash* tabela = criarTabela();

    // Inserindo elementos
    inserir(tabela, 10, 100);
    inserir(tabela, 25, 250);
    inserir(tabela, 45, 450);

    // Buscando elementos
    buscar(tabela, 25);
    buscar(tabela, 30);

    // Excluindo elementos
    excluir(tabela, 10);
    excluir(tabela, 35);

    // Liberando a memória alocada para a tabela hash
    for (int i = 0; i < TAMANHO_TABELA; i++) {
        struct NoLista* atual = tabela->lista[i];
        while (atual != NULL) {
            struct NoLista* temp = atual;
            atual = atual->proximo;
            free(temp);
        }
    }
    free(tabela);

    return 0;
}
