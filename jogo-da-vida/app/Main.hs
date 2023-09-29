module Main where

import Data.Matrix (Matrix, fromLists, prettyMatrix)

lerInicial :: String -> IO (Matrix Bool)
lerInicial fp = do
    texto <- readFile fp 
    let linhas = lines texto
    let booleanos = map (map (== '#')) linhas
    return(fromLists booleanos)


main :: IO ()
main = do
    let m = fromLists [[1,2], [3,4]]
    putStrLn (prettyMatrix m)
