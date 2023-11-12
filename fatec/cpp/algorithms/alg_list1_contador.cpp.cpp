// -----------------------------------------------
// Lab. : CONHECENDO CPP
// Ano/S: 2022/1S
// Atividade: Contador
// -----------------------------------------------

#include <stdio.h>

int main(void)
{
  int contador; //variavel de controle do loop
  
  for(contador = 1; contador <= 10; contador++)
  {
    printf("%d ", contador);
  }
  
  return(0);
}