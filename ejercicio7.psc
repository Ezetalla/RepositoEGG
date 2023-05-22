///Crear un programa que dibuje una escalera de números, donde cada línea de números
///comience en uno y termine en el número de la línea. Solicitar la altura de la escalera al usuario
///al comenzar. Ejemplo: si se ingresa el número 3:
///1
///12
///123

subproceso escalera(altura)
	definir aux Como Entero
	para aux=1 hasta altura
		para altura = 1 hasta aux Hacer
			escribir Sin Saltar altura " "
		FinPara
		escribir ""
	FinPara
		
	
FinSubProceso

Algoritmo ejercicio7
	definir altura como entero
	escribir "ingrese altura"
	leer altura
	escalera(altura)
FinAlgoritmo
