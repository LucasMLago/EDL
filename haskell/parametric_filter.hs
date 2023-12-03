-- Função filter paramétrica
filtrar :: (a -> Bool) -> [a] -> [a]
filtrar _ [] = []
filtrar predicado (elem:resto)
    | predicado elem = elem : filtrar predicado resto
    | otherwise   = filtrar predicado resto

-- Main
main :: IO ()
main = do
    let lista = [7,2,5,8,27]
    putStrLn "Lista:"
    print lista -- retorna [7,2,5,8,27]

    putStrLn ""

    let lista_f = filtrar (\elem -> elem `mod` 2 == 0) lista
    putStrLn "Lista filtrada apenas com os numeros pares:"
    print lista_f -- retorna [2,8]
