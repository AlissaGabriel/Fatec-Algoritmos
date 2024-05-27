Algoritmo "PROCEDIMENTO_CALCULADORA"

Var
   opcao, continuar: inteiro
   primeiroNumero, segundoNumero, res : real

Procedimento somar()
Inicio
   res <- primeiroNumero + segundoNumero
Fimprocedimento

Procedimento subtrair()
Inicio
   res <- primeiroNumero - segundoNumero
Fimprocedimento

Procedimento multiplicar()
Inicio
   res <- primeiroNumero * segundoNumero

Fimprocedimento

Procedimento dividir()
Inicio
   res <- primeiroNumero / segundoNumero

Fimprocedimento
Inicio
   Repita
      Escreval("Bem vindo a calculadora")
      Escreval("O quê você quer fazer?")
      Escreval("1 - somar")
      Escreval("2 - subtrair")
      Escreval("3 - multiplicar")
      Escreval("4 - dividir")
      Leia(opcao)

      Escreval("Informe o primeiro número")
      Leia(primeiroNumero)
      Escreval("Informe o segundo número")
      Leia(segundoNumero)

      Se(opcao=1)entao
         somar()
      Fimse

      Se(opcao=2)entao
         subtrair()
      fimse

      Se(opcao=3)entao
         multiplicar()
      fimse

      Se(opcao=4)entao
         dividir()
      fimse

      Escreval("O resultado é: ", res)
      Escreval("Quer fazer mais conta?")
      Escreval("1 - sim")
      Escreval("2 - nao")
      Leia(continuar)
   ate(continuar>=2)

Fimalgoritmo