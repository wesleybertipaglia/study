// ---------------------------------------------
// IED-001 - ESTRUTURAS DE DADOS - CST em INFO
// Lab. : FUNDAMENTOS DE JAVASCRIPT
// Ano/S: 2021/1S
// ---------------------------------------------

// Atividade 3 - Definir um objeto (obj3) por associação nome-valor
// ----------------------------------------------------------------

// Ação 4a - função para imprimir 'nome'
// ----
function imprimeNome(qual, valor) {
    console.log("O " + qual + " nome é: " + valor);
}

// Ação 4b - função para imprimir 'local'
// ----
function imprimeLocal(valor) {
    console.log("O local é: " + valor);
}

// Ação 1 - Definir o objeto obj3 tal como no exemplo
var obj3 = {
    // atributos
    nome: {
        primeiro: 'Carlos',
        segundo: 'Magnus'
    },
    local: 'FATEC',
    // funções internas
    imprimePrimeiroNome_Interna: function() {
        console.log("O primeiro nome é: ", this.nome.primeiro);
    },
    imprimeSegundoNome_Interna: function() {
        console.log("O segundo nome é: ", this.nome.segundo);
    },
    imprimeLocal_Interna: function() {
        console.log("O local é: ", this.local);
    }
};

// Ação 2 - Exibir os valores de obj3
console.log("Conteúdo ORIGINAL de obj3 - Impressão via console.log:");
console.log("Primeiro Nome : " + obj3.nome.primeiro);
console.log("Segundo  Nome : " + obj3.nome.segundo);
console.log("Local: " + obj3.local);

console.log("Conteúdo ORIGINAL de obj3 - Impressão via funções internas:");
obj3.imprimePrimeiroNome_Interna();
obj3.imprimeSegundoNome_Interna();
obj3.imprimeLocal_Interna();

// Ação 3 - Alterar os valores de obj3 e exibi-los novamente
// ALTERE OS VALORES DOS ATRIBUTOS
obj3.nome.primeiro = 'Wesley';
obj3.nome.segundo = 'Bertipaglia';
obj3.local = 'São José do Rio Preto';

// Ação 4 - Criar funções para exibir valores de obj3 e testá-las
console.log("Conteúdo MODIFICADO de obj3 - Impressão via funções externas:");
imprimeNome('primeiro', obj3.nome.primeiro);
imprimeNome('segundo', obj3.nome.segundo);
imprimeLocal(obj3.local);

console.log("Conteúdo MODIFICADO de obj3 - Impressão via funções internas:");
obj3.imprimePrimeiroNome_Interna();
obj3.imprimeSegundoNome_Interna();
obj3.imprimeLocal_Interna();
