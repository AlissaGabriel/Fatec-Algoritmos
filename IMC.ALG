Algoritmo "IMC"

Var
    peso, altura, imc : real

Inicio
    Escreval ("Digite seu peso: ")
    Leia (peso)
    Escreval ("Digite sua altura: ")
    Leia (altura)
    imc <- peso / (altura * altura)

    Se(imc < 18.5) Então
            Escreval ("Seu IMC é de: ", imc)
            Escreval ("Sua classificação de acordo com a tabela é de Magreza")
     Senão
        Se(imc >=18.5) E (imc <= 24.0) Então
            Escreval ("Seu IMC é de: ", imc)
            Escreval ("Sua classificação de acordo com a tabela é de Peso Normal")
      Senão
         Se(imc >=25.0) E (imc <= 29.9) Então
             Escreval ("Seu IMC é de: ", imc)
             Escreval ("Sua classificação de acordo com a tabela é de Pré-Obesidade")
       Senão
          Se(imc >=30.0) E (imc <= 34.9) Então
              Escreval ("Seu IMC é de: ", imc)
              Escreval ("Sua classificação de acordo com a tabela é de Obesidade Grau I")
        Senão
           Se(imc >=35.0) E (imc <= 39.9) Então
               Escreval ("Seu IMC é de: ", imc)
               Escreval ("Sua classificação de acordo com a tabela é de Obesidade Grau II")
         Senão
            Se(imc>=40.0)
                Escreval ("Seu IMC é de: ", imc)
                Escreval("Sua classificação de acordo com a tabela é de Obesidade Grau III")
            Fimse
           Fimse
          Fimse
         Fimse
        Fimse
    Fimse
Fimalgoritmo