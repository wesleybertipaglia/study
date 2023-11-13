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
            printf("Informe o genero do estudante (M/F): ");
            scanf(" %c", &estudante.pessoa.genero);
            printf("Informe a matricula do estudante: ");
            scanf("%d", &estudante.matricula);
            printf("Informe a media de notas do estudante: ");
            scanf("%f", &estudante.mediaNotas);

            printf("\nDetalhes do Estudante:\n");
            printf("Nome: %s\n", estudante.pessoa.nome);
            printf("Idade: %d\n", estudante.pessoa.idade);
            printf("Genero: %c\n", estudante.pessoa.genero);
            printf("Matricula: %d\n", estudante.matricula);
            printf("Media de Notas: %.2f\n", estudante.mediaNotas);
            break;
        }
        case 2: {
            Professor professor;
            printf("Informe o nome do professor: ");
            scanf("%s", professor.pessoa.nome);
            printf("Informe a idade do professor: ");
            scanf("%d", &professor.pessoa.idade);
            printf("Informe o genero do professor (M/F): ");
            scanf(" %c", &professor.pessoa.genero);
            printf("Informe o codigo do professor: ");
            scanf("%d", &professor.codigoProfessor);
            printf("Informe a diciplina do professor: ");
            scanf("%s", professor.disciplina);

            printf("\nDetalhes do Professor:\n");
            printf("Nome: %s\n", professor.pessoa.nome);
            printf("Idade: %d\n", professor.pessoa.idade);
            printf("Genero: %c\n", professor.pessoa.genero);
            printf("Codigo do Professor: %d\n", professor.codigoProfessor);
            printf("Diciplina: %s\n", professor.disciplina);
            break;
        }
        
        default:
            printf("Tipo de pessoa inválido.\n");
            break;
    }
}

int main() {
    int tipoPessoa;

    printf("Escolha o tipo de pessoa:\n");
    printf("1 - Estudante\n");
    printf("2 - Professor\n");

    printf("Digite o numero correspondente ao tipo de pessoa desejado: ");
    scanf("%d", &tipoPessoa);
    criarPessoa(tipoPessoa);

    return 0;
}