Algoritmo "VENDEDOR_FRIOS"

Var
   comissao, total, mussarela, presunto, mortadela, peru, total_mussarela, comissao_mussarela, total_presunto, comissao_presunto, total_mortadela, comissao_mortadela, total_peru, comissao_peru: real

Inicio
    Escreva ("Quantos kg de mussarela foram vendidos?")
    Leia (mussarela)
    total_mussarela <- mussarela * 55.0
    comissao_mussarela <- total_mussarela * 0.07
    Escreva ("Quantos kg de presunto foram vendidos?")
    Leia (presunto)
    total_presunto <- presunto * 33.0
    comissao_presunto <- total_presunto * 0.04
    Escreva ("Quantos kg de mortadela foram vendidos?")
    Leia (mortadela)
    total_mortadela <- (mortadela * 23.0)
    comissao_mortadela <- total_mortadela * 0.08
    Escreva ("Quantos kg de Peito de Peru foram vendidos?")
    Leia(peru)
    total_peru <- (peru * 85.0)
    comissao_peru <- total_peru * 0.02
    Escreval ("O total de item vendido de cada um dos frios respectivamente foi de" , total_mussarela ," reais", total_presunto ," reais" , total_mortadela ," reais" , total_peru ," reais")
    Escreval ("O total da comissão do vendedor de cada um dos frios respectivamente foi de:" , comissao_mussarela, " reais", comissao_presunto, " reais" , comissao_mortadela," reais" ,comissao_peru, " reais")
    total <- total_mussarela + total_presunto + total_mortadela + total_peru
    comissao <- comissao_mussarela + comissao_presunto + comissao_mortadela + comissao_peru
    Escreval ("O total de comissão foi de: ", comissao, " reais")
    Escreval ("O total do valor de todos os frios somados foi de: ", total , " reais")

Fimalgoritmo