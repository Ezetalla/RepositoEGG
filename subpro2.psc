///Crear un procedimiento que calcule la temperatura media de un d�a a partir de la temperatura
///m�xima y m�nima. Crear un programa principal, que, utilizando un procedimiento, vaya
///pidiendo la temperatura m�xima y m�nima de n d�as y vaya mostrando la media de cada d�a. El
///programa pedir� el n�mero de d�as que se van a introducir.

Algoritmo subpro2
	
	definir numdias, tempMAX, tempMIN Como Entero
	definir aux Como Entero
	aux = 0
	escribir "ingrese cuantos dias se van a introducir"
	leer numdias
	mientras aux<numdias Hacer
		escribir "ingrese temperatura minima y maxima"
		leer tempMIN
		leer tempMAX
		promedio(tempMIN, tempMAX)
		aux= aux + 1
	FinMientras
	
FinAlgoritmo

subproceso promedio(A, B)
	escribir "el promedio es" (A+B)/2

	
FinSubProceso