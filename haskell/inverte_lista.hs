inverte :: [tipo] -> [tipo] -- recebe e retorna uma lista de mesmo tipo
inverte = foldr (\atual acumulador -> acumulador ++ [atual]) []

main = print(inverte [1,2,3])