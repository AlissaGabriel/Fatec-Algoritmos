Algoritmo "PROCEDIMENTO_IMC"

Var
   imc : real

Procedimento calcularImc()
Var
   peso, altura : real
Inicio
   Escreval("Qual a sua altura?")
   Leia(altura)
   Escreval("Qual seu peso?")
   Leia(peso)
   imc <- peso / (altura * altura)
FimProcedimento

Inicio
calcularImc()

Escreval("O resultado do imc é: ", imc)

Fimalgoritmo