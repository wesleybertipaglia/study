// ---------------------------------------------
// IED-001 - ESTRUTURAS DE DADOS - CST em INFO
// Lab. : FUNDAMENTOS DE JAVASCRIPT
// Ano/S: 2022/1S
// ---------------------------------------------

// Atividade 2 - Definição de funções
// ----------------------------------

// Ação 1 - Definir uma função que coloque ‘zeros à esquerda’ de um número inteiro
///         a fim de formatá-lo. A função recebe dois argumentos: o número a ser formatado e
//          a quantidade total de casas que deve resultar no formato (exemplo: o número 35
//          com 4 casas ficaria a string ‘0035’). A função retorna a string formatada.
// This function returns a string padded with leading zeros
function padZeros(num, totalLength) {
    var numStr = num.toString();                // Initialize return value as string
    var numZeros = totalLength - numStr.length; // Calculate no. of zeros
    for (var i = 1; i <= numZeros; i++) {
       numStr = "0" + numStr;
    }
    return numStr;
 }

// Ação 2 - Definir uma função que recebe um nome de pessoa NNN (exemplo: ‘Carlos’),
//          um nome de turma TTT (exemplo: ‘3o. INFO N’) e imprime a mensagem
//          “Um dos alunos da turma TTT é NNN”.
function imprimeNomeTurma(nome, turma) {
    console.log("Um dos alunos da turma " + turma + " é " + nome);
}

// Ação 3 - Escrever testes para as duas funções acima.
console.log("Teste de formatação: 35, tamanho 4: " + padZeros(35, 4));
var numeroOriginal = 38;
var qtdCasas = 7;
console.log("Teste de formatação: " + numeroOriginal + ", tamanho " + qtdCasas + ": " + padZeros(numeroOriginal, qtdCasas));

// Teste da função imprimeNomeTurma
imprimeNomeTurma('Wesley', 'ED_INFO_N');
