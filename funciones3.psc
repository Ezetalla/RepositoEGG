/// Crea una funci�n EsMultiplo que reciba los dos n�meros pasados por el usuario, validando
/// que el primer n�mero m�ltiplo del segundo y devuelva verdadero si el primer n�mero es
/// m�ltiplo del segundo, sino es m�ltiplo que devuelva falso.

Algoritmo funciones3
	definir num1, num2 Como Real
	escribir "ingrese 2 numeros"
	leer num1, num2
	
	si esmultiplo(num1, num2)
		escribir "es verdadero"
	sino 
		escribir "es falso"
	FinSi
	
FinAlgoritmo

funcion resultado = esmultiplo(par1, par2)
	definir resultado Como Logico
	resultado = par1 mod par2 == 0
FinFuncion
