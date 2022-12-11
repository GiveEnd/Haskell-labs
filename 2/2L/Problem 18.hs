fNumber :: [a] -> Int -> Int -> [a]
fNumber l x y = drop (x-1) (take y l)
main = putStrLn(show(fNumber [1..10] 2 7)++" "++ show(fNumber['a'..'z'] 2 7))
