Algoritmo "VETOR_NOTAS"

Var
   nota : vetor[1..7] de real
   i : inteiro

Inicio

   //exemplo
   Escreval("Informe a nota do primeiro aluno")
   Leia(nota[1])

   Escreval("Você digitou a nota: ", nota[1])

   //Abastecendo o vetor
   Para i de 1 até 7 faça
      Escreva("Informe a nota da posição", i,":")
      Leia(nota[i])
   Fimpara

   Escreval("___________________________")

   Escreval("As notas digitadas foram: ")

   //Exemplo com para
   Para i de 1 até 7 faça
      Escreval("Nota da posição", i , ":", nota[i])
   Fimpara

   Escreval("___________________________")

   //Exemplo digitando manualmente
   Escreval("Nota da posição 1: ", nota[1])
   Escreval("Nota da posição 2: ", nota[2])
   Escreval("Nota da posição 3: ", nota[3])
   Escreval("Nota da posição 4: ", nota[4])
   Escreval("Nota da posição 5: ", nota[5])
   Escreval("Nota da posição 6: ", nota[6])
   Escreval("Nota da posição 7: ", nota[7])

Fimalgoritmo