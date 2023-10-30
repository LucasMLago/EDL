{-
Crie a função *divida* que recebe uma lista 
com empréstimos e juros e retorna a dívida total

divida:: [(Int,Int)] -> Int
divida l = <...> foldl <...>
-}

f = (\acumulador (emprestimo, juros) -> (acumulador + emprestimo) + (acumulador + emprestimo) * juros `div` 100)

divida :: [(Int,Int)] -> Int
divida l = foldl f 0 l

main = print(divida [(10,10), (9,20), (-10,0)]) -- retorna 14