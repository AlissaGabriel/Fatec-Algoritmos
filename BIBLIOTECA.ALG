Algoritmo "BIBLIOTECA_A"

Tipo TLivro = registro
   titulo, autor : caracter
   ano : real
   isbn : inteiro
Fimregistro

procedimento cadastrarLivro()

Inicio

   Limpatela()
   Escreval("")

   total <- total + 1
   Escreval("Informe o titulo do livro: ")
   Leia(cadastro[total].titulo)
   Escreval("Informe o autor do livro: ")
   Leia(cadastro[total].autor)
   Escreval("Informe o ano do livro: ")
   Leia(cadastro[total].ano)
   Escreval("Informe o isbn do livro: ")
   Leia(cadastro[total].isbn)

   Escreval("Livro Cadastrado com Sucesso!")
   Escreval(" ")
FimProcedimento

procedimento exibirCatalogo()

Var
   i : inteiro
Inicio


   Limpatela()
   Escreval("Livros da Biblioteca: ")
   Escreval(" ")
   Para i de 1 ate total faca
      Se(cadastro[i].titulo<> "")entao
         Escreval("Posição: ", i)
         Escreval("Titulo: " ,cadastro[i].titulo)
         Escreval("Autor: " ,cadastro[i].autor)
         Escreval("Ano: " ,cadastro[i].ano)
         Escreval("Isbn: " ,cadastro[i].isbn)
         Escreval(" ")
      Fimse
   Fimpara

FimProcedimento

Funcao BuscarLivroPorTitulo(livroNome : caracter): inteiro

Var
   codigo, i : inteiro

Inicio

   codigo <- 0
   Para i de 1 ate 10 faca
      Se(livroNome = cadastro[i].titulo)entao
         codigo <- i
         interrompa
      Fimse
   Fimpara
   Retorne codigo
Fimfuncao

Procedimento BuscarLivro()

Var
   tituloLivro : caracter
   i : inteiro

Inicio

   Limpatela()
   Escreval("Informe o titulo do livro que deseja: ")
   leia(tituloLivro)
   Escreval("")
   Se(BuscarLivroPorTitulo(tituloLivro) = 0)entao
      Escreval("Livro não encontrado!")
   Senao
      Escreval("Livro Encontrado!")
      Escreval("Titulo: ", cadastro[BuscarLivroPorTitulo(tituloLivro)].titulo)
      Escreval("Autor: " ,cadastro[BuscarLivroPorTitulo(tituloLivro)].autor)
      Escreval("Ano: " ,cadastro[BuscarLivroPorTitulo(tituloLivro)].ano)
      Escreval("Isbn: " ,cadastro[BuscarLivroPorTitulo(tituloLivro)].isbn)
      Escreval(" ")
   Fimse
Fimprocedimento

Procedimento editarLivro()

Inicio
   Limpatela()
   Escreval("Informe a posição do livro que você quer alterar: ")
   Leia(total)
   Escreval("Titulo Atual: ", cadastro[total].titulo)
   Escreval("Informe o novo titulo: ")
   Leia(cadastro[total].titulo)
   Escreval("Autor atual: ", cadastro[total].autor)
   Escreval("Informe o novo autor: ")
   Leia(cadastro[total].autor)
   Escreval("Ano atual: ", cadastro[total].ano)
   Escreval("Informe o novo ano: ")
   Leia(cadastro[total].ano)
   Escreval("isbn atual: ", cadastro[total].isbn)
   Escreval("Informe o novo isbn: ")
   Leia(cadastro[total].isbn)
   Escreval("")
   Escreval("Livro Atualizado!")
   Escreval("")

Fimprocedimento

Procedimento removerLivro()

Inicio
   Limpatela()
   Escreval("Informe a posição: ")
   Leia(total)
   Escreval("Livro Removido: ", cadastro[total].titulo)
   cadastro[total] <- cadastro[total+1]
   cadastro[total+1].titulo <- ""

Fimprocedimento

Var
   opcao : inteiro
   cadastro : vetor[1..10] de TLivro
   total : inteiro
Inicio
   Limpatela()

   Repita
      Escreval("Biblioteca")
      Escreval("1 - Cadastrar Livros")
      Escreval("2 - Exibir Catálogo")
      Escreval("3 - Buscar Livro por Título")
      Escreval("4 - Editar Livros")
      Escreval("5 - Remover Livros")
      Escreval("6 - Sair")
      Leia(opcao)

      Se(opcao=1)entao
         cadastrarLivro()
      Fimse

      Se(opcao=2)entao
         exibirCatalogo()
      Fimse

      Se(opcao=3)entao
         BuscarLivro()
      Fimse

      Se(opcao=4)entao
         editarLivro()
      Fimse

      Se(opcao=5)entao
         removerLivro()
      Fimse

   Ate(opcao=6)
Fimalgoritmo