Algoritmo "PARA_SISTEMA_LOGIN"

Var
   senha, usuario, usuarioCorreto, senhaCorreta : caracter
   i : inteiro
Inicio

   PARA i de 1 até 3 faça
      limpatela()
      Escreval("Você tem", i, " de 3 tentativas")
      Escreval ("Informe o usuário: ")
      Leia(usuario)
      Escreval ("Informe a senha: ")
      Leia(senha)
      Se(usuario="user") e (senha="123")Então
         Escreval("Login realizado com sucesso")
         interrompa
      Fimpara
   Senão
      Se(i=3)Então
         Escreval("Conta bloqueada")
      Fimse
   Fimse
Fimpara
Fimalgoritmo