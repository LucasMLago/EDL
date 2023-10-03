'''
Escreva a função filter em Python usando recursão.

- A filter deve retornar uma nova lista.
- Use um nome diferente, ex. ffilter, pois filter já existe.
- Mostre um exemplo de teste e exiba o seu resultado.
- Use apenas o básico de Python (ex., [], range, append, +).
'''

def ffilter(func,lista):
    if not lista:
        return []
    
    elif func(lista[0]):
        return [lista[0]] + ffilter(func, lista[1:])
    
    else:
        return ffilter(func,lista[1:])


# função de teste
def f(x):
    return x <= 54

l = [2,45,29,63,135,87,0] # exemplo de uma lista l

print(ffilter(f,l)) # saída: [2, 45, 29, 0]