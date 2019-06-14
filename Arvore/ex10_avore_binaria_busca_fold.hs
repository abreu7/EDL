-- foldA :: (a -> b -> b) -> b -> Arvore a -> b
-- A função deve fazer um fold de todos os valores guardados
-- na árvore recebida com a função passada e a partir de um
-- acumulador inicial também recebido.

data Arvore a = Folha | Galho a (Arvore a) (Arvore a)
                deriving Show

a1 = Galho 8 (Galho 6 Folha Folha) (Galho 10 Folha Folha)

foldA :: Num b => (a -> b -> b) -> b -> Arvore a -> b
foldA f acc Folha          = acc
foldA f acc (Galho no e d) = f no (foldA f acc e) + (foldA f acc d)

main = print(foldA (\acc x -> acc + x) 0 a1)
