fLast :: [a] -> a
fLast l = last(init(l))
main = putStrLn(show(fLast [1, 2, 3, 4])++" "++ show(fLast ["a","b","c","d"]))
