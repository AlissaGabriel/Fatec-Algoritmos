Algoritmo "FUNCAO_IMC"

Var
Função calcularImc(): real //declara

Var
   peso, altura: real

Inicio
   Escreval("Qual sua altura?")
   Leia(altura)
   Escreval("Qual seu peso?")
   Leia(peso)
   Retorne peso / (altura * altura)
Fimfunção

Inicio
   Escreval("Seu IMC é: ", calcularImc())
Fimalgoritmo