module Main where

import           Data.Matrix (Matrix, fromLists, prettyMatrix)
import qualified Data.Matrix as M 

lerInicial :: String -> IO (Matrix Bool)
lerInicial fp = do
    texto <- readFile fp 
    let linhas = lines texto
    let booleanos = map (map (== '#')) linhas
    return(fromLists booleanos)

atualizar :: Matrix Bool -> Matrix Bool
atualizar m = M.mapPos () m

atualizarCelula :: Matrix Bool -> (Int, Int) -> Bool -> Bool
atualizarCelula m (i, j) v = v
    where
        deslocamentos = [(-1, -1), (-1, 0), (-1, 1),
                         (0, -1),           (0, 1),
                         (1, 1),   (1, 0),  (1, 1)]
        vizinhos = map (\(di,dj) -> M.safeGet (i+di) (j+dj) m) deslocamentos


main :: IO ()
main = do
    let m = fromLists [[1,2], [3,4]]
    putStrLn (prettyMatrix m)
