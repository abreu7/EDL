-- Defina a função maximo que recebe uma árvore e retorna o seu maior valor.

data Arvore = Folha | Galho Int Arvore Arvore
                deriving Show

a3 = Galho 8 (Galho 6 (Galho 2 Folha (Galho 5 Folha Folha)) (Galho 3 Folha Folha)) (Galho 20 (Galho 15 (Galho 10 Folha Folha) (Galho 16 Folha Folha)) (Galho 21 Folha Folha))

a1 = Galho 8 (Galho 6 Folha Folha) (Galho 10 Folha Folha)

maximo :: Arvore -> Int
maximo (Galho valor Folha Folha) = valor
maximo (Galho valor e d) = maximo d


main = print(maximo a3)
