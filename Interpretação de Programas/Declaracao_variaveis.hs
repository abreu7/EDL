data Cmd = Atr String Exp   -- atribuicao, ex.: x=1
         | Seq Cmd Cmd      -- sequencia,  ex.: x=1 ; y=x
				 | Dcl String

c1 = Atr "x" (Num 1) -- x = 1
c2 = Seq (Dcl "x") c1 -- Var x = c1

-- A função vai verificar se o comando é válido para a nossa linguagem
--verificaCmd :: Cmd -> Bool
verificaCmd :: [String] -> Cmd -> ([String],Bool)
