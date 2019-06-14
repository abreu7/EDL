-- Defina a função espelho que recebe uma árvore
-- e inverte as subárvores de todos os galhos (troca a esquerda com a direita).

data Arvore = Folha | Galho Int Arvore Arvore
                deriving Show

a3 = Galho 1 Folha (Galho 2 (Galho 3 Folha Folha) (Galho 4 Folha Folha))

espelho :: Arvore -> Arvore
espelho Folha           = Folha
espelho (Galho x l r)   = Galho x (espelho r) (espelho l)

main = print(espelho a3)
