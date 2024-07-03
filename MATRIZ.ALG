Algoritmo "MATRIZ"
Var
   linha, coluna : inteiro
   matriz: vetor[1..2, 1..3] de inteiro
Inicio

   para linha de 1 ate 2 faca
      para coluna de 1 ate 3 faca
         escreval("Digite um valor para a linha: ", linha, " Coluna: ", coluna, ":")
         leia(matriz[linha, coluna])
      fimpara
   fimpara
   para linha de 1 ate 2 faca
      para coluna de 1 ate 3 faca
         escreva(matriz[linha,coluna]:5)
      fimpara
      escreval("")
   fimpara
   escreval("")
Fimalgoritmo