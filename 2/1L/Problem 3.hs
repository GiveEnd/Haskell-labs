fLast :: [a]->Int -> a
fLast l x = last(take x l)
main = putStrLn(show(fLast [1, 2, 3, 4, 5] 5)++" "++ show(fLast ["a","b","c","d","e"] 5))
