module Main (main) where

main::IO() 
main = putStr (show (replic 3 [1,2,3]))

replic :: Int -> [a] -> [a]
replic _ [] = []
replic n (x:xs) = (take n (cycle [x])) ++ replic n xs
