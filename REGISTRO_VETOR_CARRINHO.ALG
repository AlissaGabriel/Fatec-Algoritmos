Algoritmo "REGISTRO_VETOR_CARRINHO"

Tipo Produto = registro
   nome: caracter
   qnt, valorUnitario, valorTotal: real
Fimregistro
Var
   itens: vetor[1..3] de Produto
   opcao, i, posicao, total_itens, continuar: inteiro
Inicio
   Repita
      Escreval("")
      Escreval("Carrinho de Compras")
      Escreval("Escolha uma opção do menu")
      Escreval("1 - Ver carrinho")
      Escreval("2 - Add Itens")
      Escreval("3 - Atualizar Itens")
      Escreval("4 - Remover Itens")
      Escreval("0 - Sair")
      Leia(opcao)



      Se(opcao=1)entao
         Escreval("Posição", " ", "Item", " ", "Quantidade"," ", "V_U", " ", "V_T")
         Para i de 1 ate 3 faca
            Se(itens[i].nome <> "")entao
               Escreval( i, "      ", itens[i].nome," ", itens[i].qnt, "       ", itens[i].valorUnitario, "  ", itens[i].valorTotal)
            Fimse
         Fimpara
      Fimse

      Se(opcao=2)entao
         total_itens <- total_itens + 1
         Escreval("Informe o nome do produto: ")
         Leia(itens[total_itens].nome)
         Escreval("Informe a quantidade do Item: ")
         Leia(itens[total_itens].qnt)
      Fimse



      Se(opcao=3)entao
         Escreval("Informe a posição: ")
         Leia(posicao)
         Escreval("Nome atual: ", itens[posicao].nome)
         Escreval("Informe o novo nome: ")
         Leia(itens[posicao].nome)
      Fimse

      Se(opcao=4)entao
         Escreval("Informe a posição: ")
         Leia(posicao)
         Escreval("Vamos remover: ", itens[posicao].nome)
         itens[posicao] <- itens[posicao+1]
         itens[posicao+1].nome <- ""
      Fimse
   Ate(opcao=0)
Fimalgoritmo

