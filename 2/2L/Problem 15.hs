fNumber :: [a] -> Int -> [a]
fNumber l x = take (x*length l) (cycle l)
main = putStrLn(show(fNumber [1..10] 2)++" "++ show(fNumber['a'..'z'] 2))
