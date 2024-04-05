Algoritmo "REPITA_MEDIA"

Var
   i : inteiro
   nota1, nota2, media : real

Inicio
   Para i de 1 ate 10 Faça
      Escreval("Vamos digitar as notas do aluno",i)

      Repita
         Escreval("Digite a primeira nota: ")
         Leia(nota1)
      Ate(nota1 >= 0) e (nota1 <= 10)

      Repita
         Escreval("Digite a segunda nota: ")
         Leia(nota2)
      Ate(nota2 >=0) e (nota2 <=10)
      
      media <- (nota1+nota2) / 2
      Escreval("A média do aluno é de: ",media)
      Escreval("___________________________")
   Fimpara
Fimalgoritmo