{-
Crie um conjunto de dados com listas de tuplas baseado em um cenário real

a. Use um exemplo com map para extrair informações do conjunto de dados
b. Use um exemplo com filter para extrair informações do conjunto de dados
c. Use um exemplo com fold para extrair informações do conjunto de dados
-}

-- Conjunto de dados: (Nome do produto, Quantidade vendida, Preço por unidade)
vendas :: [(String, Int, Double)]
vendas = [
    ("Celular", 10, 499.99),
    ("Fone de ouvido", 5, 299.99),
    ("Notebook", 3, 899.99),
    ("Monitor", 20, 49.99),
    ("Mouse", 8, 199.99)
    ("Teclado", 9, 299.99)
]

-- Exemplo (a) com map: Extrair informações sobre o valor total das vendas de cada produto.
total_por_produto :: [(String, Double)]
total_por_produto = map (\(produto, quantidade, preco) -> (produto, fromIntegral quantidade * preco)) vendas

-- Exemplo (b) com filter: Filtrar produtos com vendas acima de um limite específico.
vendas_acima_do_limite :: Double -> [(String, Int, Double)]
vendas_acima_do_limite limite = filter (\(_, _, preco) -> preco > limite) vendas

-- Exemplo (c) com fold: Calcular o faturamento total da loja.
faturamento :: Double
faturamento = foldl (\acc (_, quantidade, preco) -> acc + fromIntegral quantidade * preco) 0.0 vendas
