fNumber :: [a]->Int -> [a]
fNumber l x = (take (x-1) l)++(drop x l)
main = putStrLn(show(fNumber [1..5] 2)++" "++ show(fNumber['a'..'e'] 2))
