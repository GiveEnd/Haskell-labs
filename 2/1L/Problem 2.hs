fLast :: [a] -> a
fLast l = last(init(l))
main = putStrLn(show(fLast [1..5])++" "++ show(fLast ['a'..'e']))
