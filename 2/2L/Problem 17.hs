fNumber :: [a]->Int -> ([a],[a])
fNumber l x = ((take x l),(drop x l))
main = putStrLn(show(fNumber [1..5] 3)++" "++ show(fNumber['a'..'e'] 3))
