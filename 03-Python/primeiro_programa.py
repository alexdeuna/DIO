frutas = ["laranja", "maça", "uva"]
print (frutas)
print (frutas[0])
print (frutas[-1]) # Último Valor
print (frutas[-2]) # Penultimo Valor

frutas = []

letras = list("python")

numeros = list(range(10))

carro = ["Ferrari", "F8", 2020] 

matriz = [
  []
]

print ([n**2 if n > 6 else n for n in range(10) if n % 2 == 0])

carros = ("gol")
print(isinstance(carros, tuple))

letra= "c"
letra = letra.upper()

letras = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z']

print(letras.index(letra)+1)

papa = {"esquerda":"ingles","direita":"frances","nenhuma":"portugues","ambas":"caiu"}
for chave, valor in papa.items():
    print(valor)


salario = 100.00

if salario <= 600.00:
  novo = salario * 1.17
  reajuste = salario * 0.17
  print(str(f"Novo salario: {novo:.2f} Reajsute ganho: {reajuste:.2f} Em percentual: 17 %").replace('.',','))
elif salario >= 600.01 and salario <= 600.00:
  novo = salario * 1.13
  reajuste = salario * 0.13
  print((f"Novo salario: {novo:.2f} Reajsute ganho: {reajuste:.2f} Em percentual: 13 %").replace('.',','))
elif salario >= 900.01 and salario <= 1500.00:
  novo = salario * 1.12
  reajuste = salario * 0.12
  print((f"Novo salario: {novo:.2f} Reajsute ganho: {reajuste:.2f} Em percentual: 12 %").replace('.',','))
elif salario >= 1500.01 and salario <= 2000.00:
  novo = salario * 1.10
  reajuste = salario * 0.10
  print((f"Novo salario: {novo:.2f} Reajsute ganho: {reajuste:.2f} Em percentual: 10 %").replace('.',','))
else: 
  novo = salario * 1.05
  reajuste = salario * 0.05
  print((f"Novo salario: {novo:.2f} Reajsute ganho: {reajuste:.2f} Em percentual: 05 %").replace('.',','))

# entrada = input()
# if entrada == "esquerda":
#   print("ingles")
# elif entrada == "direita":
#   print("frances")
# elif entrada == "nenhuma":
#   print("portugues")
# elif entrada == "ambas":
#   print("caiu")
