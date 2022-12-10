fLast :: [a] -> Int
fLast l = length(l)
main = putStrLn(show(fLast [1..5])++" "++ show(fLast ['a'..'e']))
