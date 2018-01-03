import Data.Char(isDigit)
import Data.Char (digitToInt)

asInt_fold :: String -> Int

asInt_fold [] = 0
asInt_fold (x:xs)
  | x == '-' = (-1) * asInt_fold xs
  | otherwise = foldl fun 0 (x:xs) where
    fun acc x
      | isDigit x = acc * 10 + digitToInt x
      | otherwise = error ("Not a digit " ++ [x])


niceSumFolder :: [Int] -> Int
niceSumFolder xs = foldl (+) 0 xs

asInt :: String -> Int

asInt xs = loop 0 xs
loop :: Int -> String ->Int

loop acc [] = acc
loop acc (x:xs) = let acc' = acc * 10 + digitToInt x
                  in loop acc' xs
