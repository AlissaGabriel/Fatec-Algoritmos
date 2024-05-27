Algoritmo "REGISTRO_VETOR_PROCEDIMENTO_CARRINHO"

Tipo Produto = registro
   nome: caracter
   qnt, valorUnitario, valorTotal: real
Fimregistro
Var
   itens: vetor[1..3] de Produto
   opcao, i, posicao, total_itens, continuar: inteiro

Função Dinheiro(valor : real) : caracter
Var
   tmp: caracter
Inicio
   tmp <- "R$ " + numpcarac(valor)
   Retorne tmp
Fimfunção

Procedimento verCarrinho()
Inicio
   Limpatela()
   Escreval("Posição", " ", "Item", " ", "Quantidade"," ", "Unidade", " ", "Total")
   Para i de 1 ate 3 faça
      Se(itens[i].nome <> "")entao
         Escreval( i, "      ", itens[i].nome," ", itens[i].qnt, "       ", Dinheiro(itens[i].valorUnitario), "  ", Dinheiro(itens[i].valorTotal))
      Fimse
   Fimpara

FimProcedimento

Procedimento adicionarItem()
Inicio
   Limpatela()
   total_itens <- total_itens + 1
   Escreval("Informe o nome do produto: ")
   Leia(itens[total_itens].nome)
   Escreval("Informe a quantidade do Item: ")
   Leia(itens[total_itens].qnt)
   Escreval("Informe o valor unitário: ")
   Leia(itens.valorUnitario)

   itens[total_itens].valorTotal <- itens[total_itens].qnt * itens[total_itens].valorUnitario
Fimprocedimento

Procedimento atualizarItem()
Inicio
   Limpatela()
   Escreval("Informe a posição: ")
   Leia(posicao)
   Escreval("Nome atual: ", itens[posicao].nome)
   Escreval("Informe o novo nome: ")
   Leia(itens[posicao].nome)
   Escreval("Qunatidade atual: ", itens[posicao].qnt)
   Escreval("Informe a nova quantidade: ")
   Leia(itens[posicao].qnt)
   Escreval("Valor unitário atual: ", itens[posicao].valorUnitario)
   Escreval("Informe o novo valor unitário: ")
   Leia(itens[posicao].valorUnitario)
   
   itens[posicao].valorTotal <- itens[posicao].qnt * itens[posicao].valorUnitario
Fimprocedimento

Procedimento removerItem()
Inicio
   Limpatela()
   Escreval("Informe a posição: ")
   Leia(posicao)
   Escreval("Vamos remover: ", itens[posicao].nome)
   itens[posicao] <- itens[posicao+1]
   itens[posicao+1].nome <- ""
FimProcedimento

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
         verCarrinho()
      Fimse

      Se(opcao=2)entao
         adicionarItem()
      Fimse

      Se(opcao=3)entao
         atualizarItem
      Fimse

      Se(opcao=4)entao
         removerItem()
      Fimse
   Ate(opcao=0)
Fimalgoritmo

