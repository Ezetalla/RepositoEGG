/// Realizar una funci�n que valide si un n�mero es impar o no. Si es impar la funci�n debe
///devolver un verdadero, si no es impar debe devolver falso. Nota: la funci�n no debe tener
///	mensajes que digan si es par o no, eso debe pasar en el Algoritmo.

Algoritmo funciones2
	
	definir num1 Como Real
	definir valida Como Logico
	
	escribir "ingrese un numero"
	leer num1
	si pares(num1) Entonces
		escribir "el numero es par"
	sino 
		escribir "el numero es impar"
	FinSi
	
FinAlgoritmo

funcion result = pares(par1)
	DEFINIR result Como Logico
	result = par1 mod 2 == 0 
	
FinFuncion
