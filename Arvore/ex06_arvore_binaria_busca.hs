-- Redefina a função possui  para uma Arvore Binária de Busca
-- de maneira mais eficiente que o exercício anterior.

data Arvore = Folha | Galho Int Arvore Arvore
                    deriving Show

-- Arvoré Binária de Busca
a3 = Galho 8 (Galho 6 (Galho 2 Folha (Galho 5 Folha Folha)) (Galho 3 Folha Folha)) (Galho 20 (Galho 15 (Galho 10 Folha Folha) (Galho 16 Folha Folha)) (Galho 21 Folha Folha))

possui :: Int -> Arvore -> Bool
possui valor Folha = False
possui valor (Galho no e d) = if (valor > no) then
                               possui valor d
                              else if (valor < no) then
                                possui valor e
                              else
                               True

main = print(possui 21 a3)
