fLast :: [a] -> Int
fLast l = length(l)
main = putStrLn(show(fLast [1, 2, 3, 4, 5])++" "++ show(fLast ["a","b","c","d","e"]))
