Algoritmo "REPITA_LANCHONETE"

Var
   opcao_menu, opcao_lanche, opcao_bebida : inteiro
   forma_pagamento, opcao_entrega : inteiro
   valor_pedido, taxa : real

Inicio
   Repita
      Escreval("1 - Exibir Cardápio")
      Escreval("2 - Novo Pedido")
      Escreval("3 - Acompanhar Pedido")
      Escreval("0 - Encerrar o Pedido")
      Leia(opcao_menu)

      Se(opcao_menu=1) ou (opcao_menu=2)Entao
         Repita
            Limpatela()
            Escreval("Escolha seu Lanche: ")
            Escreval("1 - X-Tudo R$ 35")
            Escreval("2 - X-Salada R$ 25")
            Escreval("3 - X-Burguer R$ 15")
            Leia(opcao_lanche)
         Ate(opcao_lanche>0) E (opcao_lanche<4)

         Repita
            Limpatela()
            Escreval("Escolha sua Bebida: ")
            Escreval("1 - Coca R$ 6")
            Escreval("2 - Quinze R$ 4")
            Escreval("3 - Dolly R$ 2.50")
            Leia(opcao_bebida)
         Ate(opcao_bebida>0) E (opcao_bebida<4)

         Repita
            Limpatela()
            Escreval("Escolha a forma de pagamento:")
            Escreval("1 - Pix")
            Escreval("2 - Cartão")
            Escreval("3 - Dinheiro")
            Leia(forma_pagamento)
         Ate(forma_pagamento>0) E (forma_pagamento<4)

         Repita
            Limpatela()
            Escreval("Escolha onde comer: ")
            Escreval("1 - Comer no local")
            Escreval("2 - Entregar")
            Leia(opcao_entrega)
         Ate(opcao_entrega>0) E (opcao_entrega<3)

      Fimse

      Se(opcao_menu=3)Então
         Limpatela()
         Escreval("Extrato do seu pedido: ")

         Se(opcao_lanche=1)Então
            valor_pedido <- valor_pedido + 35
         Senao
            Se(opcao_lanche=2)Então
               valor_pedido <- valor_pedido + 25
            Senao
               Se(opcao_lanche=3)Então
                  valor_pedido <- valor_pedido + 15
               Fimse
            Fimse
         Fimse

         Se(opcao_bebida=1)Então
            valor_pedido <- valor_pedido + 6
         Senao
            Se(opcao_bebida=2)Então
               valor_pedido <- valor_pedido + 4
            Senao
               Se(opcao_bebida=3)Então
                  valor_pedido <- valor_pedido + 2.50
               Fimse
            Fimse
         Fimse

         Escreval("Seu pedido deu R$: ", valor_pedido)

         Se(forma_pagamento=1)Então
            Escreval("Sua forma de pagamento é Pix")
         Senao
            Se(forma_pagamento=2)Então
               Escreval("Sua forma de pagamento é Cartão")
            Senao
               Se(forma_pagamento=3)Então
                  Escreval("Sua forma de pagamento é Dinheiro")
               Fimse
            Fimse
         Fimse

         Se(opcao_entrega=1)Então
            Escreval("Para comer no local")
         Fimse
         Se(opcao_entrega=2)Então
            taxa <- valor_pedido * 0.1
            Escreval("O valor da taxa de entrega é de: ", taxa)
         Fimse

         Escreval("Total do pedido: ", (taxa+valor_pedido))

      Fimse

   Ate(opcao_menu=0)
   Escreval("Encerrou o pedido")
Fimalgoritmo