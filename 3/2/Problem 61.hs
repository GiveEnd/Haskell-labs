module Main (main) where

main::IO()
main =  do print (countLeaves tree4)  

data Tree a = Empty | Branch a (Tree a) (Tree a) deriving (Show, Eq)
tree4 = Branch 1 (Branch 2 Empty (Branch 4 Empty Empty))
                 (Branch 2 Empty Empty)
countLeaves :: Tree a -> Int
countLeaves Empty = 0
countLeaves (Branch x Empty Empty) = 1
countLeaves (Branch x ct1 ct2) = countLeaves ct1 + countLeaves ct2
