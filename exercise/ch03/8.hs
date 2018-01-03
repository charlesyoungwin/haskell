data Tree a = Node a (Tree a) (Tree a)
        | Empty
        deriving (Show)

getHeight :: Tree a -> Int

getHeight Empty = 0
getHeight (Node a t1 t2)= 1 + (max (getHeight t1)
      (getHeight t2))
