intersperse :: a -> [[a]] -> [a]

intersperse _ [x] =  x
intersperse seq (x:xs) =  x ++ [seq] ++ (intersperse seq xs)
