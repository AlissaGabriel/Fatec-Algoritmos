Algoritmo "VETOR_REGISTRO_PROCEDIMENTO_BANCO"

Tipo Transacao = Registro
   data : caracter
   valor : real
Fimregistro

Var
   movimentacao : vetor[1..100] de Transacao
   opcao, ultimaPosicao : inteiro

Procedimento Login()
Var
   usuario, senha : caracter
   i : inteiro
Inicio
   para i de 1 ate 3 faca
      Limpatela()
      Escreval("Você tem ",i, " de 3 tentativas")
      Escreval("Informe o seu usuário: ")
      Leia(usuario)
      Escreval("Informe sua senha:")
      Leia(senha)
      Se(usuario<>"joao") ou (senha<>"123")entao
         Escreval("Usuário ou senha incorretos")
      Senao
         Interrompa
      Fimse
   Fimpara
   Se(i=3)entao
      escreval("Sistema Bloqueado")
   Fimse
Fimprocedimento

Procedimento Sacar()

Var
   valorConta : real
   valorSaque : real
   dataSaque: caracter

Inicio
   Escreval("Saque")
   Limpatela()
   valorConta <- Saldo()
   Escreval("Seu saldo na conta é de: R$ ", valorConta)

   Escreval("Informe o valor do saque: ")
   Leia(valorSaque)

   Se(valorSaque > valorConta)entao
      Escreval("Saldo Insuficiente")
   Senao
      Escreval("Informe a data do saque: ")
      Leia(dataSaque)

      ultimaPosicao <- ultimaPosicao + 1

      movimentacao[ultimaPosicao].valor <- (valorConta - valorSaque) - Saldo()
      movimentacao[ultimaPosicao].data <- dataSaque

   Fimse
Fimprocedimento

Procedimento Depositar()

Var
   valor : real
   data  : caracter
   valorConta : real

Inicio
   Escreval("Depósito")
   Limpatela()
   valorConta <- Saldo()
   Repita
      Escreval("Informe o valor do Depósito: ")
      Leia(valor)
      Escreval("Informe a data do Depósito: ")
      Leia(data)
      Se(valor<=0)entao
         Escreval("Quantidade inválida")
      Fimse
   Ate(valor>0)

   ultimaPosicao <- ultimaPosicao + 1

   movimentacao[ultimaPosicao].valor <- valor
   movimentacao[ultimaPosicao].data <- data


Fimprocedimento

Procedimento verExtrato()

Var
   i : inteiro
   valorTotal : real
Inicio
   valorTotal <- Saldo()
   Escreval("Extrato: ")
   Limpatela()
   Para i de 1 ate 100 faca
      Se(movimentacao[i].data <> "")entao
         Escreval("Valor: R$ ", movimentacao[i].valor)
         Escreval("Data: ", movimentacao[i].data)
         Escreval("")
      Fimse
   Fimpara
   Escreval("Seu saldo é de: R$ ", valorTotal)
Fimprocedimento

Procedimento verSaldo()

Var
   valorSaldo : real

inicio
   Limpatela()
   valorSaldo <- Saldo()
   Escreval("Seu saldo é de: R$ ", valorSaldo)

Fimprocedimento

Funcao Saldo() : real
var
   i : inteiro
   valor: real

Inicio
   Para i de 1 ate 100 faca
      valor <- valor + movimentacao[i].valor
   Fimpara
   Retorne valor
Fimfuncao

Inicio
   Login()

   Repita
      Escreval("")
      Escreval("Caixa Eletrônico: ")
      Escreval("1 - Depositar")
      Escreval("2 - Sacar")
      Escreval("3 - Ver o extrato")
      Escreval("4 - Ver saldo")
      Escreval("5 - Finalizar")
      Leia(opcao)

      Se(opcao=1)entao
         Depositar()
      Fimse

      Se(opcao=2)entao
         Sacar()
      Fimse

      Se(opcao=3)entao
         VerExtrato()
      Fimse

      Se(opcao=4)entao
         verSaldo()
      Fimse

   Ate(opcao=5)
Fimalgoritmo