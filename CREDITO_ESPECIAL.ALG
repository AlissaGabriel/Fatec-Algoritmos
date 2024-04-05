Algoritmo "CREDITO_ESPECIAL"

Var
   saldoMedio, valorCredito, seguro : real
   idade : inteiro

Inicio
   Escreval("Informe o seu saldo médio do último ano: ")
   Leia(saldoMedio)

   Se(saldoMedio<=200)Então
      valorCredito <- 0
   Senão
      Se(saldoMedio>200) E (saldoMedio<=400)Então
         valorCredito <- saldoMedio * 0.2
      Senão
         Se(saldoMedio>400) E (saldoMedio<=600)Então
            valorCredito <- saldoMedio * 0.3
         Senão
            Se(saldoMedio>600)Então
               valorCredito <- saldoMedio * 0.4
            Fimse
         Fimse
      Fimse
   Fimse

   Escreval("Informe a sua idade: ")
   Leia(idade)

   Se(idade>=18) E (idade<=24)Então
      seguro <- valorCredito * 0.02
   Senão
      Se(idade>=25) E (idade<=35)Então
         seguro <- valorCredito * 0.06
      Senão
         Se(idade>=36) E (idade<=45)Então
            seguro <- valorCredito * 0.08
         Senão
            Se(idade>=46) E (idade<=55)Então
               seguro <- valorCredito * 0.10)
            Senão
               Se(idade>55)Então
                  seguro <- valorCredito * 0.15
               Fimse
            Fimse
         Fimse
      Fimse
   Fimse
   Escreval("O valor do seu crédito é de: ", valorCredito, " reais")
   Escreval("O valor do seu seguro é de: ", seguro, " reais")
   Escreval("Total: ", (valorCredito + seguro), " reais")
Fimalgoritmo