module Main (main) where

main :: IO () 
main = do 
    print "Enter a:"
    getA <- getLine
    print "Enter b:"
    getB <- getLine
    print "Enter c:"
    getC <- getLine

    let polynom = (read getA :: Float, read getB :: Float, read getC :: Float)
    print.outputRoots $ findRoots polynom

findRoots  :: (Float, Float, Float) -> RFound

findRoots  (a, b, c)
    | a == 0 || d < 0 = RNo| d > 0 = RTwo {x1 = x1, x2 = x2}

    | otherwise = ROne {x = x1} where

        d = (b*b) - (4 * a * c)
        x1 = (-b - sqrt d) / (2 * a)
        x2 = (-b + sqrt d) / (2 * a)

data RFound = RTwo {x1, x2 :: Float} | ROne {x :: Float} | RNo

outputRoots :: RFound -> String
outputRoots RNo = "No solutions"
outputRoots (ROne x) = "One solution, x = " ++ show x
outputRoots (RTwo x1 x2) = "Two solutions, x1 = "++ show x1 ++ " x2 = " ++ show x2
