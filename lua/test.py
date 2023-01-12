

lista1 = [1,8,9,2,3,5,10]


#imprime la lista1 en orden inverso
print(lista1[::-1])

print('')


#imprime la lista1 desde la posicion 3 en adelante
print(lista1[3::])

#imprime la lista1 desde un rango a otro
print(lista1[1:4])

#ordenar la lista de menor a mayor 
ordered = sorted(lista1)
print(ordered)

#ordernar de menor a mayor
alrevez = sorted(lista1, reverse=True)
print(alrevez)
