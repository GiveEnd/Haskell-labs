module Main (main) where

main::IO()
main = do print (show (dupli [1, 2, 3]))

dupli' :: a -> [a]
dupli' x = [x,x]

toall :: (a -> b) -> [a] -> [b]
toall f [] = []
toall f (x:t) = (f x):(toall f t)

simplify :: [[a]] -> [a]
simplify [] = []
simplify (x:t) = x ++ (simplify t)

dupli :: [a] -> [a]
dupli lst = simplify (toall dupli' lst)
