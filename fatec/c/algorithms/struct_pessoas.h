#define SIM 1
#define NAO 0
#define SUCESSO  0
#define ERRO    -1

typedef struct {
    char nome[50];
    int idade;
    char genero;
} Pessoa;

typedef struct {
    Pessoa pessoa;
    int matricula;
    float mediaNotas;
} Estudante;

typedef struct {
    Pessoa pessoa;
    int codigoProfessor;
    char disciplina[50];
} Professor;

typedef struct {
    Pessoa pessoa;
    int codigoCliente;
    float saldoConta;
} Cliente;

typedef struct {
    Pessoa pessoa;
    int matriculaFuncionario;
    char cargo[50];
    float salario;
} Funcionario;