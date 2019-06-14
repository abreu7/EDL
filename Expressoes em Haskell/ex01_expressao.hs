-- Defina valores do tipo Exp para as seguintes expressões
data Exp = Num Int
         | Add Exp Exp
         | Sub Exp Exp
         deriving Show

exp1 = Add (Num 1) (Num 2) 
exp2 = Add (Num 1) (Sub (Num 10) (Num 20)) -- 1 + 10 - 20
exp3 = Sub (Add (Num 5) (Num 5)) (Sub (Num 5) (Num 5)) -- (5+5)-(5-5)
exp4 = Add (Add (Add (Num 1) (Num 2)) (Num 3)) (Num 4)
exp5 = Add (Num 1) (Add (Num 2) (Add (Num 3) (Num 4)))
exp6 = Sub (Sub (Sub (Num 1) (Num 2)) (Num 3)) (Num 4)
exp7 = Sub (Num 1) (Sub (Num 2) (Sub (Num 3) (Num 4)))
exp8 = Sub (Sub (Num 1) (Num 2)) (Sub (Num 3) (Num 4))

escreve :: Exp -> String
escreve (Num valor)     = show valor
escreve (Add exp1 exp2) = "(" ++ (escreve exp1) ++ "+" ++ (escreve exp2) ++ ")"
escreve (Sub exp1 exp2) = "(" ++ (escreve exp1) ++ "-" ++ (escreve exp2) ++ ")"

main = print(escreve exp1, escreve exp2, escreve exp3, escreve exp4, escreve exp5, escreve exp6)

