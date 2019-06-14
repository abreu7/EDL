-- Defina a função insere que recebe uma árvore e um valor 
-- e retorna uma nova árvore com esse novo valor, 
-- respeitando a propriedade de árvore de busca.

data Arvore = Folha | Galho Int Arvore Arvore
                deriving Show

a1 = Galho 8 (Galho 6 Folha Folha) (Galho 10 Folha Folha)

insere :: Int -> Arvore -> Arvore
insere valor Folha = Galho valor Folha Folha
insere valor (Galho no e d) = if (valor > no) then
                               Galho no e (insere valor d)
                              else  
                               Galho no (insere valor e) d 

main = print(insere 7 a1)
