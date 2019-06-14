data Arvore a = Folha | Galho a (Arvore a) (Arvore a)
                deriving  Show

a1 = Galho 10 (Galho 5 Folha  Folha ) (Galho 7 Folha  Folha )
a2 = Galho 10 (Galho 5 (Galho 5 Folha Folha) (Galho 2 Folha Folha) ) (Galho 7 Folha  Folha )
a3 = Folha

-- Defina a função folhas que recebe uma árvore e retorna a sua quantidade de folhas.
folhas :: Arvore a -> Int
folhas Folha = 1
folhas (Galho _ e d) = (folhas e) + (folhas d)

-- Defina a função altura que recebe uma árvore e 
--retorna a sua altura, ou seja,
-- a maior distância entre a raíz e as folhas. (Uma árvore com apenas uma folha tem altura 0).
altura :: Arvore a -> Int
altura Folha = 0
altura (Galho _ e d) = maximo (altura e)  (altura d) + 1

maximo :: Int -> Int -> Int
maximo a b = if a > b then a else b

main = print(folhas a1, altura a2, altura a1)
