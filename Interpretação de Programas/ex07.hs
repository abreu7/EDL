data Cmd = Atr String Exp   -- atribuicao, ex.: x=1
         | Seq Cmd Cmd      -- sequencia,  ex.: x=1 ; y=x

data Exp = Num Int
         | Add Exp Exp
         | Sub Exp Exp
         | Var String
    deriving Show
		
type Amb = String -> Int

avaliaExp :: Exp -> Int
avaliaExp (Num v) = v 
avaliaExp (Add e1 e2) = (avaliaExp e1) + (avaliaExp e2)
avaliaExp (Sub e1 e2) = (avaliaExp e1) - (avaliaExp e2)
avaliaExp (Var id) = Amb id

avaliaCmd :: Amb -> Cmd -> Amb
avaliaCmd amb (Atr id ep) = (\x -> if x == id then v
                                    else amb id)
																		where v = avaliaExp amb ep
avaliaCmd amb (Seq c1 c2) = avaliaCmd amb' c2
                            where amb' = avaliaCmd amb c1

comando1 = Atr "x" (Num 1) -- x = 1
comando2 = Atr "x" Add (Num 1) (Sub (Var "x") (Num 20)) -- x = 1 + x - 20
comando3 = Seq (Atr "x" (Num 1)) (Atr "y" (Num 2)) (Atr "z" (Add (Var "x") (Var "y"))) -- x = 1 ; y = 2 ; z = x+y

