
----------------- EXERCÍCIO 1 -----------------
addSuffix :: String -> [String] -> [String]
addSuffix x ys =  [y ++ x | y <- ys]

----------------- EXERCÍCIO 2 -----------------
addSuffix' :: String -> [String] -> [String]
addSuffix' _[] = []
addSuffix' x (y:ys) = (y++x) : addSuffix' x ys

----------------- EXERCÍCIO 3 -----------------
countShorts :: [String] -> Int
countShorts [] = 0
countShorts (x:xs)
	| length x >= 5		= countShorts xs
	| otherwise 	= 1 + countShorts xs

----------------- EXERCÍCIO 4 -----------------
countShorts' :: [String] -> Int
countShorts' xs = length [x | x <- xs, (length x) < 5]

----------------- EXERCÍCIO 5 -----------------
ciclo :: Int -> [Int] -> [Int]
ciclo 0_ = []
ciclo n x = x ++ ciclo (n-1) x

----------------- EXERCÍCIO 6 -----------------
combine :: [Int] -> [String] -> [(Int, String)]
combine []_ = []
combine _[] = []
combine (n:ns) (x:xs) = (n, x) : combine ns xs

----------------- EXERCÍCIO 7 -----------------
numera :: [String] -> [(Int, String)]
numera x = zip (auxNumera (length x)) x

auxNumera :: Int -> [Int]
auxNumera 0 = []
auxNumera n = auxNumera (n-1) ++ [n]

----------------- EXERCÍCIO 8 -----------------
{-
	A) 
	> [ (x,y) | x <- [1..5], even x, y <- [(x + 1)..6], odd y]
	[(2,3),(2,5),(4,5)]

	Este comando retorna uma lista com tuplas de números inteiros, a partir
	de duas listas, a primeira contém os valores de 1 a 5 e são selecionados
	apenas os valores pares, que são unidos com os valores ímpares da
	segunda lista a partir do número selecionado +1 até 6.

	B) 
	> [ a ++ b | a <- ["lazy", "big"], b <- ["frog", "dog"]]
	["lazyfrog","lazydog","bigfrog","bigdog"]

	Este comando retorna uma lista de strings a partir de duas outras listas
	com a união de cada elemento da primeira lista com todos os outros da
	segunda.

	C)
	> concat [ [a, '-'] | a <- "paralelepipedo", a `elem` "aeiou"]
	"a-a-e-e-i-e-o-"

	Esta expressão retorna uma lista de strings contendo apenas as vogais 
	da palavra "paralelepipedo" seguidas de um hífen '-'. Esta lista é 
	concatenada pela função "concat", resultadno em uma só string, ou lista
	de caracteres.

-}

----------------- EXERCÍCIO 9 -----------------
crossProdutct :: [a] -> [b] -> [(a, b)]
crossProdutct _[] = []
crossProdutct []_ = []
crossProdutct (x:xs) ys = pairWithAll x ys ++ crossProdutct xs ys

pairWithAll :: a -> [b] -> [(a, b)]
pairWithAll _[] = []
pairWithAll x (y:ys) = (x, y) : pairWithAll x ys

----------------- EXERCÍCIO 10 -----------------
genRects :: Int -> (Int, Int) -> [(Float, Float, Float, Float)]
genRects n (x,y) = genRectsAux n (fromIntegral x/1, fromIntegral y/1)

genRectsAux :: Int -> (Float, Float) -> [(Float, Float, Float, Float)]
genRectsAux 0_ = []
genRectsAux n (x,y) = (x, y, largAlt, largAlt) : genRectsAux (n-1) (x+largAlt, y)
	where 	largAlt = 5.5

----------------- EXERCÍCIO 11 -----------------
tupLisToLisTup :: [(a,b)] -> ([a], [b])
tupLisToLisTup [] = ([],[])
tupLisToLisTup ((x1,x2):xs) = (n, m)
	where	n = x1:(fst (tupLisToLisTup xs))
		m = x2:(snd(tupLisToLisTup xs))

----------------- EXERCÍCIO 12 -----------------
tupLisToLisTup' :: [(a,b)] -> ([a], [b])
tupLisToLisTup' n = ([ fst x | x <- n], [ snd x | x <- n])

----------------- EXERCÍCIO 13 -----------------
tupLisToLisTup'' :: [(a,b)] -> ([a], [b])
tupLisToLisTup'' n = ( map (\x -> fst x) n , map (\x -> snd x) n )