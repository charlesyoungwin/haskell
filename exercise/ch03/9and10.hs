data Direction = TurnLeft | TurnRight | Straight
        deriving (Show, Eq)

data Point = Point {
  px :: Int,
  py :: Int
} deriving (Show)

calcTurn :: Point -> Point -> Point -> Direction

calcTurn a b c
  | area == 0 = Straight
  | area > 0 = TurnLeft
  | area < 0 = TurnRight
  where
    area = (px b - px a) * (py c - py a) -
      (py b - py a) * (px c - px a)

calcTurnList :: [Point] -> [Direction]

calcTurnList (a : b : c : xs) = calcTurn a b c :
    calcTurnList(b : c : xs)
calcTurnList _ = []
