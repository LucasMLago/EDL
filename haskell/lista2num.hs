lista_to_num :: [Int] -> Int
lista_to_num = foldl (\acumulador atual -> acumulador * 10 + atual) 0

main = print(lista_to_num [0,9,0,9,0]) -- retorna 9090