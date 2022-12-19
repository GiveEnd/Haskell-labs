module Main (main) where

main :: IO ()
main = do print ( show (intReplica [1, 2, 3, 4, 5] 3))

myFoldr :: (a -> b -> b) -> b -> [a] -> b
myFoldr con temp = \x -> case x of
    a:as    -> a `con` myFoldr con temp as
    []      -> temp  

myConst x _ = x

intReplica :: [a] -> Int -> [a]
intReplica [] _ = []
intReplica (x:xs) n = myFoldr (myConst (x:)) (intReplica xs n) [1..n]
