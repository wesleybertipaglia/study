#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "struct_pessoas.h"

void criarPessoa(int tipo) {
    switch (tipo) {
        case 1: {
            Estudante estudante;
            printf("Informe o nome do estudante: ");
            scanf("%s", estudante.pessoa.nome);
            printf("Informe a idade do estudante: ");
            scanf("%d", &estudante.pessoa.idade);
            printf("Informe o gênero do estudante (M/F): ");
            scanf(" %c", &estudante.pessoa.genero);
            printf("Informe a matrícula do estudante: ");
            scanf("%d", &estudante.matricula);
            printf("Informe a média de notas do estudante: ");
            scanf("%f", &estudante.mediaNotas);

            printf("\nDetalhes do Estudante:\n");
            printf("Nome: %s\n", estudante.pessoa.nome);
            printf("Idade: %d\n", estudante.pessoa.idade);
            printf("Gênero: %c\n", estudante.pessoa.genero);
            printf("Matrícula: %d\n", estudante.matricula);
            printf("Média de Notas: %.2f\n", estudante.mediaNotas);
            break;
        }
        // Adicione os casos para outros tipos (Professor, Cliente, Funcionario) conforme necessário...
        default:
            printf("Tipo de pessoa inválido.\n");
            break;
    }
}

int main() {
    int tipoPessoa;

    // Solicitar ao usuário o tipo de pessoa
    printf("Escolha o tipo de pessoa:\n");
    printf("1 - Estudante\n");
    // Adicione as opções para outros tipos (Professor, Cliente, Funcionario) conforme necessário...

    printf("Digite o número correspondente ao tipo de pessoa desejado: ");
    scanf("%d", &tipoPessoa);

    // Criar a pessoa com base no tipo selecionado
    criarPessoa(tipoPessoa);

    return 0;
}