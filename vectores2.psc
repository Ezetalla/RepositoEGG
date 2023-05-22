///Realizar un programa que lea 10 números reales por teclado, los almacene en un arreglo y
///muestre por pantalla la suma, resta y multiplicación de todos los números ingresados al
///arreglo.

Algoritmo vectores2
	
	definir vector1, i Como Entero
	definir aux Como Entero
	aux=0
	dimension vector1(10)
	
	para i = 0 hasta 9 con paso 1
		escribir "ingrese 10 valores"
		leer vector1(i)
	 fin para
	
	para i = 0 hasta 9 con paso 1
	aux = aux + vector1(i)
		
	FinPara
	escribir aux
	
FinAlgoritmo
