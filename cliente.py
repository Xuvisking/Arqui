import ruleta
import Tragamonedas

def Registro():
	return True

def Inicio_sesion():
	user = input("Usuario: ")
	password = input("Contraseña: ")
	return (True , 2)

def Cerrar_sesion():
	return False

monedero = 0
exit = True
sesion = True

print("	  __^__                                      __^__")
print("         ( ___ )------------------------------------( ___ )")
print("          | / |                                      | \\ |")
print("          | / |    BIENVENIDO AL CASINO VIRTUAL      | \\ |")
print("          |___|                                      |___|")
print("         (_____)------------------------------------(_____) \n")

print("Tenemos a tu disposicion tres diferentes tipos de juegos, como lo es :\n")
print("1. BlackJack")
print("2. Ruleta")
print("3. Maquina Tragamonedas\n")

while sesion == True:
	print("¿Deseas iniciar sesion o registrarte?\n")
	print("1. Iniciar Sesion")
	print("2. Registrarte\n")

	sesion_option = input("Opcion => ")

	if sesion_option == "1":
		res, monedero  = Inicio_sesion()

		if res == False:
			print("Error al iniciar sesion, vuelva intentarlo\n")

		if res == True:
			print("¡Exito al iniciar sesion!\n")
			sesion = False


	if sesion_option == "2":
		res = Registro()

		if res == False:
			print("Error al registrarte, intentalo nuevamente\n")

		if res == True:
			print("¡Exito al registrarte!\n")	

if monedero == 0:
	print("---ALERTA---")
	print("No posees monedas!, te recomendamos recargar tu saldo antes de jugar\n")

while exit == True:
	print("\n----- MENU PRINCIPAL -----\n")
	print("1. BlackJack")
	print("2. Ruleta")
	print("3. Maquina Tragamonedas")
	print("4. Ver saldo")
	print("5. Recargar Saldo")
	print("6. Retirar Saldo")
	print("7. Cerrar sesion y salir\n")

	option = input("Opcion => ")

	if option == "2":
		if monedero < 2:
			print("\n---ALERTA---")
			print("Para jugar necesitas al menos 2 monedas, escoga la opcion recargar saldo\n")
		else:
			monedero = ruleta.ruleta(monedero)

	if option == "3":
		if monedero <= 0:
			print("\n---ALERTA---")
			print("Para jugar necesitas al menos una moneda, escoga la opcion recargar saldo\n")
		else:
			monedero = Tragamonedas.tragamonedas(monedero)

	if option == "7":
		exit = Cerrar_sesion()
