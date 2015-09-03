
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
--numera :: [String] -> [(Int, String)]
--mumera :: [] = []
--numera x = 

auxNumera :: Int -> [Int]
auxNumera 0 = []
auxNumera n = auxNumera (n-1) ++ n