Algoritmo "DESCONTO_PAGAMENTO"

Var
  forma_pagamento, pagamento, novo_pagamento, desconto : real

Inicio
    Escreval ("Qual o valor do pagamento?")
    Leia (pagamento)
    Escreval ("Escolha sua forma de pagamento: ")
    Escreval ("1 = Cartão ")
    Escreval ("2 = Pix")
    Escreval ("3 = Dinheiro")
    Leia (forma_pagamento)

    Se(forma_pagamento = 1) Então
        Escreval("o valor do pagamento em cartao é de: ", pagamento:2:2, " reais ")
    Senão
      Se(forma_pagamento = 2) Então
        novo_pagamento <- pagamento * 0.06
        desconto <- (pagamento - novo_pagamento)
        Escreval("O valor do pagamento em pix é de: ", desconto:2:2, " reais" )
     Senão
       Se(forma_pagamento = 3) Então
        novo_pagamento <- pagamento * 0.10
        desconto <- ( pagamento - novo_pagamento)
        Escreval ("O valor do pagamento em dinheiro é de: ", desconto:2:2, " reais ")
       Fimse
      Fimse
    Fimse
Fimalgoritmo

// :2:2 colocar a vírgula no número 0.00


