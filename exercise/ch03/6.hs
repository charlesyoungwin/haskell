import Data.List(sortBy)

sortList :: [[a]] -> [[a]]

-- sortGt a b
--   | length a < length b = LT
--   | length a > length b = GT
--   | length a == length b = EQ
--
-- sortList = sortBy sortGt

sortList = sortBy sortGt where
  sortGt a b
   | aLen < bLen = LT
   | aLen > bLen = GT
   | aLen == bLen = EQ
   where
     aLen = length a
     bLen = length b
