///Realizar una funci�n que calcule la suma de dos n�meros. En el algoritmo principal le
	///pediremos al usuario los dos n�meros para pas�rselos a la funci�n. Despu�s la funci�n
		///calcular� la suma y lo devolver� para imprimirlo en el algoritmo.

Algoritmo funciones1
	
	definir num1, num2, result Como Real
	
	escribir "escriba dos numeros"
	leer num1, num2
	result = suma(num1, num2)
	escribir result
	
FinAlgoritmo

funcion resultado = suma(par1, par2)
	definir resultado Como Real
	resultado = par1 + par2
FinFuncion
