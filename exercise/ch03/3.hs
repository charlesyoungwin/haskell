calAverage :: [a] -> Int

calAverage xs = (fromInteger . sum $ xs) /
      (fromInteger . myLength $ xs)
