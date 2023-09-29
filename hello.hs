--comentario é com dois hífens seguidos

hello = putStrLn "Hello World!"

--nome da função junto dos parâmetros
dobro x = x*2

{-
bhaskara a b c = 
    if delta < 0
        then [] 
        else if delta == 0 then [x'] else [x', x'']
-}

delta a b c = b**2 - 4*a*c

bhaskara a b c
    | d < 0 = []
    | d == 0 = [x']
    | otherwise = [x', x'']
    where
        d = delta a b c
        x' = (-b + sqrt d) / (2*a)
        x'' = (-b - sqrt d) / (2*a)

--função fib recebe um int e devolve um int
fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib n = fib(n-1)+fib(n-2)
