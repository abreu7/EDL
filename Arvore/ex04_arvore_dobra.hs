-- Defina a função dobra que recebe uma árvore
-- e retorna uma nova árvore com todos os valores dos galhos originais duplicados.

data Arvore = Folha | Galho Int Arvore Arvore
                deriving  Show

a1 = Galho 10 (Galho 5 Folha  Folha ) (Galho 7 Folha  Folha )
a2 = Galho 10 (Galho 5 (Galho 5 Folha Folha) (Galho 2 Folha Folha) ) (Galho 7 Folha  Folha )
a3 = Folha

dobra :: Arvore  -> Arvore
dobra Folha = Folha
dobra (Galho no e d) = Galho (duplica no) (dobra e) (dobra d) 

duplica :: Int -> Int
duplica num = num*2

main = print(dobra a1)
