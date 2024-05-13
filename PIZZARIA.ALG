Algoritmo "PIZZARIA"

Var
   pizza, calzone, total,totalParcial, garcom, totalPizza, totalCalzone, totalRefri, totalSuco : real
   refrigerante, suco : inteiro

Inicio
   Escreval("Você vai querer quantas pizzas?")
   Leia(pizza)
   totalPizza <- pizza * 45.90
   Escreval("Você vai querer quantos calzones?")
   Leia(calzone)
   totalCalzone <- calzone * 33.90
   Escreval("Você vai querer quantos refrigerantes lata?")
   Leia(refrigerante)
   totalRefri <- refrigerante * 4
   Escreval("Você vai querer quantas jarras de sucos?")
   Leia(suco)
   totalSuco <- suco * 6
   totalParcial <- totalPizza + totalCalzone + totalRefri + totalSuco
   garcom <- totalParcial * 0.1
   total <- totalParcial + garcom
   Escreval("-----------Extrato---------")
   Escreval("O valor total da mesa é de: R$", totalParcial)
   Escreval("")
   Escreval("O valor para o garçom é de: R$", garcom)
   Escreval("")
   Escreval("O valor total é de: R$", total)
   Escreval("")
   Escreval("Você pediu: ",pizza," pizza(s)")
   Escreval("O valor da pizza é de: R$", totalPizza)
   Escreval("")
   Escreval("Você pediu: ",calzone," calzone(s)")
   Escreval("O valor do calzone é de: R$", totalCalzone)
   Escreval("")
   Escreval("Você pediu: ",refrigerante," refrigerante lata(s)")
   Escreval("O valor do refrigerante é de: R$", totalRefri)
   Escreval("")
   Escreval("Você pediu: ",suco," jarra de suco(s)")
   Escreval("O valor do suco é de: R$", totalSuco)

Fimalgoritmo