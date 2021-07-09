import random

def ruleta(monedas):
	Monedas = monedas
	premios_ruleta = [0,2,6,2,0,2,4,2]
	game = True

	print("	               __")
	print("                     .'  '.")
	print("                 _.-'/  |  \\")
	print("    ,        _.-\u0022  ,|  /  0 `-. ")
	print("    |\\    .-\u0022       `--""-.__.'=====================-,")
	print("    \\ '-'`        .___.--._)=========================|")
	print("     \\            .'      |                          |")
	print("      |     /,_.-'        |        BIEVENIDO AL      |")
	print("    _/   _.'(             |           JUEGO          |")
	print("   /  ,-' \\  \\            |        DE LA RULETA      |")
	print("   \\  \\    `-'            |                          |")
	print("    `-'                   '--------------------------'")
	print("\n")
	print("Tira la ruleta para recibir premio que van desde 2, hasta 6 monedas!!!\nPero cuidado, puedes tambien caer en la casilla de 0 monedas. Buena suerte!\n")
	print("Tu saldo es: " + str(Monedas) + "\n")

	while game == True:
		option = input("¿Deseas tirar la ruleta? \n 1:Si \n 2:No\n")
		if option == "1":
			ran = random.randint(0, 7)
			Monedas += premios_ruleta[ran]
			if premios_ruleta[ran]== 0:
				print("¡Mala Suerte! No ganaste\n")
			else:
				print("Has ganado " + str(premios_ruleta[ran]) + " monedas!" )
				print("Tu saldo es: " + str(Monedas) + "\n")
		else:
			exit = input("¿Deseas salir del juego?\n 1:Si \n 2:No\n")	
			if exit == "1":
				game = False

	return Monedas	