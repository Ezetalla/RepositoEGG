/// Crea una función EsMultiplo que reciba los dos números pasados por el usuario, validando
/// que el primer número múltiplo del segundo y devuelva verdadero si el primer número es
/// múltiplo del segundo, sino es múltiplo que devuelva falso.

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
