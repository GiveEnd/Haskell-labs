fLast :: [a] -> a
fLast l = last(init(l))
main = putStrLn(show(fLast [1..4])++" "++ show(fLast ['a'..'d']))
