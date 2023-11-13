#include <stdio.h>

// Definindo a struct para representar informações sobre um livro
struct Livro {
    char titulo[100];
    char autor[50];
    int anoPublicacao;
};

int main() {
    // Declarando uma instância da struct Livro
    struct Livro meuLivro;

    // Inicializando os dados do livro
    printf("Digite o título do livro: ");
    scanf("%s", meuLivro.titulo);

    printf("Digite o autor do livro: ");
    scanf("%s", meuLivro.autor);

    printf("Digite o ano de publicação do livro: ");
    scanf("%d", &meuLivro.anoPublicacao);

    // Exibindo informações do livro
    printf("\nInformações do Livro:\n");
    printf("Título: %s\n", meuLivro.titulo);
    printf("Autor: %s\n", meuLivro.autor);
    printf("Ano de Publicação: %d\n", meuLivro.anoPublicacao);

    return 0;
}
