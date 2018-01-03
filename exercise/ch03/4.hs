palindromeList :: [a] -> [a]
inverse :: [a] -> [a]

palindromeList [] = []
palindromeList s = s ++ inverse s

inverse [] = []
inverse (x:xs) = inverse(xs) ++ [x]
