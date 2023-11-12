Algoritmo "Shop Cart"
// Disciplina  :  [Informática e Negócios -  Lógica de Programação] 
// Professor   : Francisco Antonio de Almeida  ( Xyko Almeida) 
// Descrição   : Carrinho de Compras
// Autor(a)    : Wesley Bertipaglia
// Data atual  : 29/11/2021
Var
// Seção de Declarações das variáveis 
inteiro: tipoDoce[25, 10], i, j, contador, adicionarCarrinho;
real: quantidadeKg[25][10], precoKg[25][10], totalDoce[25][10], totalASerPago[25];

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

para i de 0 ate 4
for (i = 0; i < 4; i++){
printf("\nCliente ", "&d", i);

for (j = 0; (adicionarCarrinho = 0); j++){
printf("\nDigite o tipo de doce: ");
scanf("%d", &tipoDoce[i][j]);
printf("\nDigite a quantidade (em kg): ");
scanf("%f", &quantidadeKg[i][j]);

switch (tipoDoce[i][j])
{
case 1:
if (quantidadeKg[i][j] <= 5) {
precoKg[i][j] = 25;
} else {
precoKg[i][j] = 22;
}
break;
case 2:
if (quantidadeKg[i][j] <= 5) {
precoKg[i][j] = 24.45;
} else {
precoKg[i][j] = 22.25;
}
break;
case 3:
if (quantidadeKg[i][j] <= 5) {
precoKg[i][j] = 35;
} else {
precoKg[i][j] = 30;
}

totalDoce[i][j] = precoKg[i][j] * quantidadeKg[i][j];
printf("\nDeseja adicionar mais produtos ao carrinho? (digite 1 se sim ou 0 se nao) \n");
scanf("%d", &adicionarCarrinho);

if ((adicionarCarrinho = 1)){
contador = contador + 1;
}
}
totalASerPago[i] = totalASerPago[i] + totalDoce[i][j];
}
}

for (i = 0; i < 4; i++){
printf("\nCliente ", "&d", i);
for (j = 0; (j = contador); j++){
printf("\n Tipo do doce: ");
printf("%d", tipoDoce[i][j]);
printf("\nQuantidade (kg): ");
printf("%f", quantidadeKg[i][j]);
printf("\nPreço (kg) R$ ");
printf("%f", precoKg[i][j]);
printf("\nTotal R$ %f", totalDoce[i][j]);
}

printf("\nTotal da Compra R$ %f", totalASerPago[i]);
}
}

Fimalgoritmo
