main = do
putStrLn "Enter a:"
a <- getLine
putStrLn "Enter b:"
b <- getLine
putStrLn "Enter c:"
c <- getLine
let aa = read a :: Float
let bb = read b :: Float
let cc = read c :: Float
let disc = bb^2-4*aa*cc
let x1=(-bb-sqrt disc)/(2*aa)
let x2=(-bb+sqrt disc)/(2*aa)
if disc < 0  then putStrLn ("No solutions") else if disc==0 then putStrLn("One solution, x = "++ show x1) else putStrLn("Two solutions, x1 = "++ show x1++" x2 = "++ show x2)
