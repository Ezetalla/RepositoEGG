/// Realizar un procedimiento que permita realizar la división entre dos números y muestre el
/// cociente y el resto utilizando el método de restas sucesivas.
/// El método de división por restas sucesivas consiste en restar el dividendo con el divisor hasta
/// obtener un resultado menor que el divisor, este resultado es el residuo, y el número de restas
/// realizadas es el cociente. Por ejemplo: 50 / 13:
///	50 ? 13 = 37 una resta realizada
///	37 ? 13 = 24 dos restas realizadas
///	24 ? 13 = 11 tres restas realizadas
///dado que 11 es menor que 13, entonces: el residuo es 11 y el cociente es 3.

SubProceso restas(a, b)
	definir resultado Como Entero
	definir aux Como Entero
	aux=0
	resultado = 0
	Mientras resultado > b Hacer
	resultado = a-b
	escribir "el residuo es" resultado
	aux=aux+1	
Finmientras

escribir "el cociente es" aux "y el residuo es" resultado

FinSubProceso
Algoritmo subpro3
	
	definir num1, num2 Como Entero
	escribir "ingrese 2 numeros"
	leer num1, num2
	restas(num1, num2)
	
	
	
FinAlgoritmo
