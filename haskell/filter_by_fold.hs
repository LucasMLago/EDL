{-
Crie a função *filter* com base na *foldr*

filterf:: (a -> Bool) -> [a] -> [a]
filterf f l = <...> foldr <...>
-}

filterf :: (a -> Bool) -> [a] -> [a]
filterf f l = foldr(\atual acumulador -> 
    if f atual then 
        atual : acumulador 
    else 
        acumulador) 
    [] l

main = print(filterf (\x -> x >= 18) [19,20,8,7,70,4]) -- retorna [19,20,70]