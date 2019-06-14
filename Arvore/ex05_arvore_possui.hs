-- Defina uma função possui que recebe uma árvore
-- e um valor e retorna se algum galho da árvore guarda esse valor.

data Arvore = Folha | Galho Int Arvore Arvore
                deriving  Show

a1 = Galho 10 (Galho 5 Folha  Folha ) (Galho 7 Folha  Folha )
a2 = Galho 10 (Galho 5 (Galho 5 Folha Folha) (Galho 2 Folha Folha) ) (Galho 7 Folha  Folha )
a3 = Folha

possui :: Int -> Arvore -> Bool
possui valor Folha =  False
possui valor (Galho no e d) = if (valor == no) then 
                               True
                              else 
                               possui valor e || possui valor d 

main = print(possui 7 a1)
