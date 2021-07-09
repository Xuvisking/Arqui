import random

def tragamonedas(monedas):

    reglas = """ Los números van del 1 al 9 y se juega con 5 números.
    
                Se te pagará tres veces lo que apostaste si obtienes 5 números iguales,
                Se te pagará dos veces lo que apostaste si obtienes 4 números iguales,
                Se te pagará 1.5 veces lo que apostaste si obtienes 3 números iguales,
                Se te devolverá lo que apostaste si obtienes 2 números iguales y
                Perderás todo si ningún número es igual.\n"""

    rules = input("Quiere leer las reglas? (S/N) \n")
    rules = rules.lower()

    if(rules == "s"):
        print(reglas)

    option = "s"    

    while(option != "n"):
    
        dinero = int(input("Ingrese el monto que desea apostar \n"))
        try:
            if (dinero <= 0): 
                print("Monto inválido, reingrese su apuesta") 
        except:
            print("Ingrese un valor numérico \n")     
 
        numeros = []
        counter  = [0,0,0,0,0]

        for i in range (0,5):
            numeros.append(random.randint(1,9))
            #print(numeros)
        for j in range (0,5):
            auxiliar = 1
            for k in range (j,4):
                if (numeros[j] == numeros[k+1]):
                    auxiliar += 1
                    counter[j] = auxiliar
        #print(counter)
        premio = max(counter)
        premio = premio

        print("")
        print("Tus números fueron: ",numeros[0], numeros[1], numeros[2], numeros[3], numeros[4], "\n")

        if(premio == 0):print("Ningún número coincide, recibes: 0")
        elif(premio == 2):print("Dos números coinciden, recuperas tus: ", dinero)   
        elif(premio == 3):print("Tres números coinciden, recibes: ", dinero*1.5)
        elif(premio == 4):print("Cuatro números coinciden, recibes: ", dinero*2)
        elif(premio == 5):print("Todos tus números coinciden, felicidades!!!, recibes: ", dinero*3)

        option = input("Desea volver a jugar? (s/n) ")
        option = option.lower()
        print("")


if (__name__== '__main__'):
    tragamonedas()         
