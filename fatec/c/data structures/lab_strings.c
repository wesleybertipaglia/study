#include <stdio.h>
#include <string.h>

// Função para obter o comprimento de uma string
int comprimentoString(char str[]) {
    int comprimento = 0;
    while (str[comprimento] != '\0') {
        comprimento++;
    }
    return comprimento;
}

// Função para concatenar duas strings
void concatenarStrings(char destino[], char origem[]) {
    int comprimentoDestino = comprimentoString(destino);
    int i = 0;
    while (origem[i] != '\0') {
        destino[comprimentoDestino + i] = origem[i];
        i++;
    }
    destino[comprimentoDestino + i] = '\0'; // Adiciona o caractere nulo no final
}

// Função para verificar se uma string é um palíndromo
int ehPalindromo(char str[]) {
    int inicio = 0;
    int fim = comprimentoString(str) - 1;

    while (inicio < fim) {
        if (str[inicio] != str[fim]) {
            return 0; // Não é um palíndromo
        }
        inicio++;
        fim--;
    }

    return 1; // É um palíndromo
}

int main() {
    char string1[100];
    char string2[100];

    printf("Digite a primeira string: ");
    scanf("%s", string1);

    printf("Digite a segunda string: ");
    scanf("%s", string2);

    printf("\nComprimento da primeira string: %d\n", comprimentoString(string1));

    concatenarStrings(string1, string2);
    printf("Concatenacao das duas strings: %s\n", string1);

    if (ehPalindromo(string1)) {
        printf("A string concatenada e um palindromo.\n");
    } else {
        printf("A string concatenada nao e um palindromo.\n");
    }

    return 0;
}
