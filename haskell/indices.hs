{-
Crie a função *indices* que recebe uma lista e retorna 
uma lista de tuplas com os elementos originais e seus índices

Exemplo:
indices :: [a] -> [(Int,a)]
indices l = <...> foldr <...>
-}

f = (\atual (index, acumulador) -> (index - 1, (index, atual) : acumulador))

indices :: [tipo] -> [(Int, tipo)]
indices lista = snd $ foldr f (length lista - 1, []) lista

main = print (indices ["l","u","c","a","s"]) -- retorna [(0,"l"),(1,"u"),(2,"c"),(3,"a"),(4,"s")]