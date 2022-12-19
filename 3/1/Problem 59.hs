module Main (main) where

main::IO()
main =  do print ( show (take 4 ( bornTree 'x' 3))) 
         
data Tree a = Empty | Branch a (Tree a) (Tree a) deriving (Show, Eq)
bornTree s 0 = [Empty]
bornTree s 1 = [Branch s Empty Empty]
bornTree s x = [Branch s c d | (a, b) <- [(x-2, x-1), (x-1, x-1), (x-1, x-2)], c <- bornTree s a, d <- bornTree s b]
