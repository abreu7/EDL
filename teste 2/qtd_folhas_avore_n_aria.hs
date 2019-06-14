data Arvore = Folha | Galho Int [Arvore]
                deriving Show

a1 = Galho 10 [Galho 20 [Folha, Folha], Galho 30 [Folha, Folha]]
a2 = Galho 20 [Galho 30 [Folha, Folha], Folha]

folhas :: Arvore -> Int
folhas Folha                = 1
folhas (Galho n (h : t))    = (folhas h) + foldr(\x acc -> acc + (folhas x)) 0 t

main = print(folhas a2)
