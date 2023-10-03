'''
Escreva a função map em Python usando um comando de loop.

- Use a técnica iterativa (`for`, `while`).
- A map deve alterar a lista existente.
- Use apenas o básico de Python (ex., [], range, append, +).
- Use um nome diferente, por ex. fmap, pois map já está existe.
- Mostre um exemplo de teste e exiba o seu resultado.
'''

def fmap(func, lista):
    i=0
    while i < len(lista):
        lista[i] = func(lista[i])
    return lista

# teste da lista l = [10,20,30,40,50,60]
l = [10,20,30,40,50,60]

print(fmap(lambda x: x/2, l)) # saída: [5,10,15,20,25,30]