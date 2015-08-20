--isEven :: Int -> Bool
--isEven n = mod n 2 == 0

somaquad :: Int -> Int -> Int
somaquad x y = x^2 + y^2

doubleFirst :: [Int] -> Int
doubleFirst x = (head x)^2

hasEqHeads :: [Int] -> [Int] -> Bool
hasEqHeads x y = head x == head y

mrList :: [String] -> [String]
mrList x = map ("Mr. " ++) x

contSpace :: String -> Int
contSpace x = length (filter (== ' ') x)

equation :: [Float] -> [Float]
equation lista = map (\n -> 3*n^2 + 2/n + 1) lista

filterAge :: [Int] -> [Int]
filterAge x = filter(> 45) x

serie :: Double -> [Double] -> Double
serie m lista = sum (map (\n -> n/m) lista)

charFound :: Char -> String -> Bool
charFound a x = length (filter (== a) x ) > 0

htmlListItems :: [String] -> [String]
htmlListItems x = map (\n -> "<LI>" ++ n ++ "<LI>") x

--takeWhile :: (a -> Boll) -> [a] -> [a]
--takeWhile x y = filter(x) y