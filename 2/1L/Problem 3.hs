fLast :: [a]->Int -> a
fLast l x = last(take x l)
main = putStrLn(show(fLast [1..5] 5)++" "++ show(fLast ['a'..'e'] 5))
