module Main (main) where

main::IO()
main = putStr (show (lastbutone [1, 2, 3, 5]))

lastbutone :: [a] -> a
lastbutone [a,b] = a 
lastbutone [] = error "The list is empty!"
lastbutone [a] = error "There is only one element"
lastbutone (a : ab) = lastbutone ab
