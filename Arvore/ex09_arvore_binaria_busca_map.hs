-- mapA :: (a -> b) -> Arvore a -> Arvore b
-- A função deve mapear todos os valores de uma árvore 
-- para uma nova árvore, usando uma função de mapeamento

data Arvore a = Folha | Galho a (Arvore a) (Arvore a)
                deriving Show

a1 = Galho 8 (Galho 6 Folha Folha) (Galho 10 Folha Folha)

mapA :: (a -> b) -> Arvore a -> Arvore b
mapA funcao Folha          = Folha
mapA funcao (Galho no e d) = (Galho (funcao no) (mapA funcao e) (mapA funcao d))

-- Podemos definir a função que será passada
dobra :: Int -> Int
dobra x = x*2

main = print(mapA (\x -> 2 * x) a1)
