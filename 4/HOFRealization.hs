myConst :: a -> b -> a
myConst a _ = a

myFoldr :: (a -> b -> b) -> b -> [a] -> b
myFoldr con temp = \x -> case x of
    a:as    -> a `con` myFoldr con temp as
    []      -> temp 
    
dupli' :: a -> [a]
dupli' x = [x,x]

toall :: (a -> b) -> [a] -> [b]
toall f [] = []
toall f (x:t) = (f x):(toall f t)

simplify :: [[a]] -> [a]
simplify [] = []
simplify (x:t) = x ++ (simplify t)
