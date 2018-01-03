myConcat :: [[a]] -> [a]

myConcat xs = foldr (++) [] xs

myTakeWhile :: (a -> Bool) -> [a] -> [a]

-- myTakeWhile fun [] = []
-- myTakeWhile fun (x:xs) = if fun x
--         then x : myTakeWhile fun xs
--         else []

myTakeWhile fun [] = []
myTakeWhile fun (x:xs) = foldl func [] (x:xs) where
    func acc x  | fun x  = acc ++ [x]
                | otherwise = []

myTakeWhile' :: (a -> Bool) -> [a] -> [a]
myTakeWhile' fun [] = []
myTakeWhile' fun (x:xs) = foldr func [] (x:xs) where
  func x acc  | fun x = x : acc
              | otherwise = []

myAny :: (a -> Bool) -> [a] -> Bool
myAny fun [] = False
myAny fun xs = foldr step False xs
      where step x acc = fun x || acc

noAsPattern :: [a] -> [[a]]
noAsPattern (x:xs) = (x:xs) : noAsPattern xs
noAsPattern [] = []
