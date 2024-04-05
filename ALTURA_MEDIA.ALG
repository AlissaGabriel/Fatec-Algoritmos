Algoritmo "ALTURA_MÉDIA"

Var
   i, jogadores : inteiro
   media, altura, jogadorAlto, jogadorBaixo, alturaSoma : real
Inicio
   Escreval("Informe a quantidade de jogadores do time: ")
   Leia(jogadores)

   Para i de 1 até jogadores faça
      Escreval("Qual a altura do jogador",i, ":")
      Leia(altura)

      alturaSoma <- alturaSoma + altura

      Se (i = 1) Então
         jogadorAlto <- altura
         jogadorBaixo <- altura
      Fimse

      Se(altura > jogadorAlto)Então
         jogadorAlto <- altura
      Fimse
      Se(altura < jogadorBaixo)Então
         jogadorBaixo <- altura
      Fimse

   Fimpara
   media <- alturaSoma / jogadores
   Escreval("A média dos jogadores é de: ",media)
   Escreval("A maior altura é de: ",alto)
   Escreval("A menor altura é de: ",jogadorBaixo)


Fimalgoritmo