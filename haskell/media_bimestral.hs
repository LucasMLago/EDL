{- 
Crie a função *med_bim* que recebe uma lista de números 
e retorna as médias dos elementos dois a dois

Exemplo:
med_bim:: [Int] -> [Int]
med_bim l = <...> foldr <...>
-}

f = (\atual (primeiro, acumulador) -> 
    (not primeiro, 
    if primeiro then 
        acumulador 
    else 
        (atual + head acumulador) `div` 2 : acumulador))

med_bim :: [Int] -> [Int]
med_bim lista = snd $ foldr f (True, []) lista

main = print(med_bim [7,9,3,7]) -- retorna [8,5]