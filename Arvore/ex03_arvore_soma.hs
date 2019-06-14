-- Defina a função soma que recebe uma árvore
-- e retorna a soma de todos os valores guardados nos seus galhos.

data Arvore = Folha | Galho Int Arvore Arvore
                deriving  Show

a1 = Galho 10 (Galho 5 Folha  Folha ) (Galho 7 Folha  Folha )
a2 = Galho 10 (Galho 5 (Galho 5 Folha Folha) (Galho 2 Folha Folha) ) (Galho 7 Folha  Folha )
a3 = Folha

soma :: Arvore  -> Int
soma Folha = 0
soma (Galho no e d) = (soma e) + (soma d) + no 

main = print(soma a1, soma a2, soma a3)
