Algoritmo "REGISTRO_CHURRASCO"

Tipo ingrediente = registro
   nome : caracter
   qnt : real
   valorUnit : real
   valorTotal : real
Fimregistro

Var
   itens: vetor[1..3] de ingrediente
   qntPessoa, i: inteiro
   totalUnitario, custoTotal: real
   addMais: caracter

Inicio
   Escreval("Informe a quantidade de pessoas do churrasco: ")
   Leia(qntPessoa)

   Para i de 1 ate 3 faça
      Escreval("Informe o nome do item: ")
      Leia(itens[i].nome)
      Escreval("Informe a quantidade do item ", itens[i].nome, ":")
      Leia(itens[i].qnt)
      Escreval("Informe o valor unitário do item ", itens[i].nome, ":")
      Leia(itens[i].valorUnit)
      Escreval("")
      custoTotal <- custoTotal + (itens[i].valorUnit * itens[i].qnt)
      totalUnitario <- custoTotal / qntPessoa


      Escreval("Quer add mais?")
      Escreval("1 - Sim")
      Escreval("2 - Não")
      Leia(addMais)
      Se(addMais = "2") Então
         interrompa
      Fimse
   Fimpara

   Escreval("----------Extrato----------")
   Escreval("")
   Escreval("Lista de ingredientes do churrasco: ")
   Para i de 1 até 3 faça
      Escreval(itens[i].nome)
   Fimpara
   Escreval("")
   Escreval("O valor total do churrasco é de: ",custoTotal)
   Escreval("")
   Escreval("O valor para cada pessoa é de: ",totalUnitario)
Fimalgoritmo