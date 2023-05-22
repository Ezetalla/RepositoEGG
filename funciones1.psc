///Realizar una función que calcule la suma de dos números. En el algoritmo principal le
	///pediremos al usuario los dos números para pasárselos a la función. Después la función
		///calculará la suma y lo devolverá para imprimirlo en el algoritmo.

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
