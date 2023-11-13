#include <stdio.h>

// Definindo a union para representar um número como inteiro ou ponto flutuante
union Numero {
    int inteiro;
    float flutuante;
};

int main() {
    // Declarando uma instância da union Numero
    union Numero meuNumero;

    // Inicializando os dados da union
    printf("Digite um número inteiro: ");
    scanf("%d", &meuNumero.inteiro);

    // Exibindo o número como inteiro
    printf("\nNúmero como inteiro: %d\n", meuNumero.inteiro);

    // Modificando e exibindo o número como ponto flutuante
    printf("Digite um número em ponto flutuante: ");
    scanf("%f", &meuNumero.flutuante);
    printf("Número como ponto flutuante: %.2f\n", meuNumero.flutuante);

    return 0;
}
