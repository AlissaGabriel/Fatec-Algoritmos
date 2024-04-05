Algoritmo "ESTRUTURA_DECISAO_SIMPLES"

Var
  n1, n2, media : real

Inicio
    Escreval ("Digite a primeira nota: ")
    Leia (n1)
    Escreval ("Digite a segunda nota: ")
    Leia (n2)
    media <- (n1 + n2)/2
    Escreval ("A média é: ",media)
    
    Se(media >=6) entao
        Escreval ("Aprovado")
    Senão
        Escreval ("Reprovado")
    Fimse
Fimalgoritmo