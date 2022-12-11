fNumber :: [a] -> [a]
fNumber [] = []
fNumber (x:t) = [x,x] ++ fNumber t
main = do
putStrLn(show(fNumber [1..10])++" "++ show(fNumber['a'..'z']))
