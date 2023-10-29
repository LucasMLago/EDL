{-
Crie a função *inverte* que recebe uma lista de qualquer tipo e inverte essa lista:

Exemplo
inverte :: [a] -> [a]
inverte = <...> foldl <...>
-}

inverte :: [tipo] -> [tipo] -- recebe e retorna uma lista de mesmo tipo
inverte = foldr (\atual acumulador -> acumulador ++ [atual]) []

main = print(inverte [[1,2], [3,4], [5,6]]) -- retorna [[5,6], [3,4], [1,2]]