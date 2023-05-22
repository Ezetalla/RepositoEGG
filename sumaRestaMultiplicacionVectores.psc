//Realizar un programa que lea 10 números reales por teclado, los almacene en un arreglo y
//muestre por pantalla la suma, resta y multiplicación de todos los números ingresados al
//arreglo.

Funcion retorno = operaciones
	definir retorno Como Real
	definir vector, i, suma, resta, multiplicacion Como Entero
	dimension vector[10]
	
	suma = 0
	resta = 0
	multiplicacion = 1
	
	escribir "ingresá 10 numeros"
	
	para i = 0 hasta 9 hacer
		
		leer vector[i]
		
	FinPara
	
	para i = 0 hasta 9 Hacer
		
		suma = suma + vector[i]
		
	FinPara
	
	
	para i = 0 hasta 9 Hacer
		
		resta = resta - vector[i]
		
	FinPara
	
	
	para i = 0 hasta 9 Hacer
		
		multiplicacion = multiplicacion * vector[i]
		
	FinPara
	
	escribir "la suma de tus numeros es ",suma
	escribir "la resta de tus numeros es ",resta
	escribir "la multiplicacion de tus numeros es ",multiplicacion
	
	
FinFuncion



Algoritmo sumaRestaMultiplicacionVectores

	escribir operaciones

FinAlgoritmo
