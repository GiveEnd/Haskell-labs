fNumber :: [a] -> a -> Int -> [a]
fNumber l x n = (take (n-1) l)++[x]++(drop (n-1) l)
main = putStrLn(show(fNumber [1..10] 1 5)++" "++ show(fNumber['a'..'g'] 'g' 5))
