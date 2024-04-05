Algoritmo "VETOR_NOTAS_MEDIA"

Var
   nota1: vetor[1..10] de real
   nota2: vetor[1..10] de real
   nome: vetor[1..10] de caracter
   media_soma, media, media_final:real
   i:inteiro

Inicio
   Para i de 1 até 10 faça
      Escreval("Informe o nome da posição", i, ":")
      Leia(nome[i])
      Escreval("Informe a primeira nota do aluno ", nome[i], ":")
      Leia(nota1[i])
      Escreval("Informe a segunda nota do aluno ",nome[i], ":")
      Leia(nota2[i])
      media <- (nota1[i] +nota2[i])/ 2
      media_soma <- media + media_soma
      Escreval("A média do aluno " , nome[i], " é de: " ,media)
      Escreval("_______________________")
   Fimpara
   Escreval("_______________________")
   media_final <- media_soma/i
   Escreval("A média geral da sala é de: " ,media_final)

Fimalgoritmo