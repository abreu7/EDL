-- Defina a função avalia que recebe uma expressão
-- e retorna o valor inteiro correspondente a sua avaliação.

data Exp = Num Int
         | Add Exp Exp
         | Sub Exp Exp
         deriving Show

exp1 = Add (Num 1) (Num 2) 
exp2 = Add (Num 1) (Sub (Num 10) (Num 20)) -- 1 + 10 - 20

avalia :: Exp -> Int
avalia (Num valor) = valor
avalia (Add exp1 exp2) = (avalia exp1) + (avalia exp2)
avalia (Sub exp1 exp2) = (avalia exp1) - (avalia exp2)

-- Em vez de retornar um inteiro, defina a função avalia'
-- que retorna a expressão reduzida a um caso Num,
--  ex: avalia (Add (Num 1) (Num 2) --> Num 3

value :: Exp -> Int
value (Num v) = v

avalia2 :: Exp -> Exp
avalia2 (Num valor)     = Num valor
avalia2 (Add exp1 exp2) = Num (value(avalia2 exp1) + value(avalia2 exp2))
avalia2 (Sub exp1 exp2) = Num (value(avalia2 exp1) - value(avalia2 exp2))

-- exp1 = Add (Num 1) (Num 2) 
-- Num (value(avalia2 exp1) + value(avalia2 exp2))


main = print(avalia2 exp1) 
