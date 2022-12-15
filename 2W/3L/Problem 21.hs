module Main (main) where

main::IO()
main = do putStr(show (insert 'X' "abcd" 2))

insert :: a -> [a] -> Int -> [a]
insert s xs 1 = s:xs
insert s (x:xs) m = x: insert s xs (m-1)
