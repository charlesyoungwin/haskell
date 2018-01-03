data Tree a = Node a (Tree a) (Tree a)
            | Empty
            deriving (Show)


data MyTree a = Node a (Maybe (MyTree a)) (Maybe (MyTree a))
  deriving (Show)

{-
java version

class Tree<A>{
  private A val;
  private Tree left;
  private Tree right;

  public Tree(A val){
    this.val = val
  }

  public Tree(A val, Tree<A> left, Tree<A> right){
    this.val = val;
    this.left = left;
    this.right = right;
  }

}

python version

class Tree:
  def __init__(self, val, left = None, right = None):
    self.val = val
    self.left = left
    selt.right = right

-}
