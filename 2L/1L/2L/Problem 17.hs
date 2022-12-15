module Main (main) where

main::IO() 
main = do print(split "abcdefghik" 3)

split2 :: String -> Integer -> String
split2 (x:t) n
    | n == 1 = t
    | otherwise = split2 t (n-1)
split1 :: String -> Integer -> String
split1 (x:t) n 
    | n == 1 = [x]
    | otherwise = [x] ++ split1 t (n-1)
split :: String -> Integer -> (String, String)
split lst n = (split1 lst n, split2 lst n)
