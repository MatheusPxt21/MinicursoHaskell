import Data.List (lookup)
import Data.Maybe(fromMaybe)

indiceLetra :: Char -> Int
indiceLetra c = fromMaybe 0 m
  --  fromMaybe 0 m, como foi usado
  --  ou
  --  case m of 
  --      Nothing -> 0
  --      Just i -> i   
    where m = lookup c (zip ['A'..'Z'] [ 1..])

{-
coloca no terminal: lookupBy (\p-> head p == 'a') ["livro", "asas", "casa"]
retorna: Just "asas"

coloca no terminal: lookupBy (\p-> head p == 'b') ["livro", "asas", "casa"]
retorna: Nothing

ghci> import Data.Char (isUpper)
ghci> lookupBy (\p-> isUpper(head p)) ["livro", "asas", "casa"]
Nothing
ghci> lookupBy (\p-> isUpper(head p)) ["livro", "asas", "casa", "Teste"]
Just "Teste"

-}

lookupBy :: (a -> Bool) -> [a] -> Maybe a
lookupBy f [] = Nothing
lookupBy f (h:t) = 
    if f h 
        then Just h 
        else lookupBy f t
    
