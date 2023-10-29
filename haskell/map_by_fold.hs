{-
Crie a função *map* com base na *foldr*

mapf :: (a -> b) -> [a] -> [b]
mapf f l = <...> foldr <...>
-}

mapf :: (a -> b) -> [a] -> [b]
mapf f l = foldr (\atual acumulador -> f atual : acumulador) [] l

main = print (mapf (\atual -> [atual]) "LUCAS") -- retorna ["L","U","C","A","S"]