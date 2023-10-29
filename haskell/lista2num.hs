{-
Crie a função *lista_to_num* que recebe uma lista de números e retorna um número

lista_to_num :: [Int] -> Int
lista_to_num l = <...> foldr <...>

Cada posição da lista guarda um dígito de 0-9, representando uma casa decimal do número a ser retornado

Exemplos:
lista_to_num [1,2,3] -- > 123
lista_to_num [0,9,0,9,0] -- > 9090
-}

lista_to_num :: [Int] -> Int
lista_to_num = foldl (\acumulador atual -> acumulador * 10 + atual) 0

main = print(lista_to_num [0,9,0,9,0]) -- retorna 9090