-- 11)

delete :: (Eq a) => a -> [a] -> [a]
delete _ [] = []
delete a (x:xs) | x == a    = delete a xs
                | otherwise = x:delete a xs

perms :: (Eq a) => [a] -> [[a]]
perms [] = [[]]
perms xs = [ i:j | i <- xs, j <- perms (delete i xs) ]

task :: Int -> Int -> [Char]
task n m = perms (reverse (drop (15-m) (reverse digits)))!!(n-1) where digits = "0123456789ABCDEF"

main = do 
    putStrLn "Podaj n: "
    n <- getLine
    putStrLn "Podaj m: "
    m <- getLine
    putStrLn (task (read n) (read m))