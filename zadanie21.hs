-- 21)

digitPowSum :: Int -> Int -> Int -> Int
digitPowSum 0 n sum  = sum
digitPowSum a n sum  = digitPowSum (a `div` 10) n (sum + ((a `mod` 10)^n))

checkSum :: Int -> Int -> Bool
checkSum n a = digitPowSum a n 0 == a

task :: Int -> Int
task n = sum (filter (checkSum n) [1..999999])

main = do
    putStrLn "Podaj n: "
    n <- getLine
    print (task (read n))