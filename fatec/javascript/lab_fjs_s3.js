// ---------------------------------------------
// IED-001 - ESTRUTURAS DE DADOS - CST em INFO
// Nome : Wesley Bertipaglia
// R.A. : [COLOQUE AQUI O SEU NÚMERO DE MATRÍCULA]
// Turma: (x) M     (   ) T     (   ) N
// ---------------------------------------------

// ---------------------------------------------
// Lab. : FUNDAMENTOS DE JAVASCRIPT
// Ano/S: 2021/1S
// ---------------------------------------------

// Suporte Teórico 3 - FUNÇÕES
// ---------------------------

// "Programa principal": teste das funções
var x = 19;
var a = 2;
console.log("Antes de acumular ...");
printValor(x);
printValor(a);
var y = acumulaValor(x, a);
console.log("Depois de acumular ...");
printValor(y);
printValor(x);
printValor(a);

// função que não retorna valor
function printValor(valor) {
    console.log('Valor recebido: ' + valor);
}

// função que retorna valor
function acumulaValor(valor, acrescimo) {
    return valor + acrescimo;
}
