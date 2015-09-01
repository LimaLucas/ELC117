--------------- EXEMPLOS DE AULA ---------------

tamListInt :: [Int] -> Int
tamListInt [] = 0
tamListInt x = 1 + tamListInt (tail x)

contaChar :: [Char] -> Char -> Int
contaChar []_ = 0
contaChar x c
	| head x == c	= 1 + contaChar (tail x) c
	| otherwise	= contaChar (tail x) c

repeteChar :: Int -> Char -> [Char]
repeteChar 0_ = []
repeteChar n c = c : repeteChar (n-1) c

geraPot2r :: Int -> [Int]
geraPot2r 0 = [1]
geraPot2r n = 2^n : geraPot2r (n-1)

geraPot2 :: Int -> [Int]
geraPot2 0 = [1]
geraPot2 n = geraPot2 (n-1) ++ [2^n]


----------------- EXERCÍCIO 1 -----------------
elevaQuadrado :: [Int] -> [Int]
elevaQuadrado [] = []
elevaQuadrado x = (head x)^2 : elevaQuadrado (tail x)


----------------- EXERCÍCIO 2 -----------------
contidoCharStr :: Char -> [Char] -> Bool
contidoCharStr _[] = False
contidoCharStr c x = head x == c || contidoCharStr c (tail x)

----------------- EXERCÍCIO 3 -----------------
semVogais :: String -> String
semVogais "" = ""
semVogais (x:xs)
	| contidoCharStr x "aeiou"	= semVogais xs
	| contidoCharStr x "AEIOU"	= semVogais xs
	| otherwise					= x : semVogais xs

----------------- EXERCÍCIO 4 -----------------
deslocaCoord :: [(Float, Float)] -> [(Float, Float)]
deslocaCoord [] = []
deslocaCoord (x:xs) = (fst x +2, snd x + 2) : deslocaCoord xs

----------------- EXERCÍCIO 5 -----------------
tabelaQuadrados :: Int -> [(Int, Int)]
tabelaQuadrados 0 = []
tabelaQuadrados x = tabelaQuadrados (x-1) ++ [(x, x^2)]
