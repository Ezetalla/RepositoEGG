//Escribir un programa que realice la búsqueda lineal de un número entero ingresado por el
//usuario en una matriz de 5x5, llena de números aleatorios y devuelva por pantalla las
//coordenadas donde se encuentra el valor, es decir en que fila y columna se encuentra. En
//caso de no encontrar el valor dentro de la matriz se debe mostrar un mensaje.
/// COSAS NUEVAS

Algoritmo ej2_matriz
	definir cosasnuevas como entero
	definir matri, m , n, val Como Real
	dimension matri(5,5)

		para m=0 hasta 4 con paso 1 hacer
			para n=0 hasta 4 con paso 1 Hacer
				matri(m,n)=Aleatorio(1,5)
			FinPara
		FinPara
		
		escribir "ingrese valor a buscar"
		leer val
		
		para m=0 hasta 4 con paso 1 hacer
			para n=0 hasta 4 con paso 1 Hacer
				si matri(m,n)==val
					escribir "el valor se encuentra en la posicion [", m ,",", n,"]"
				sino 
					escribir "el valor no se encuentra en la matriz"
				FinSi
				
				
			FinPara
		FinPara
		
	
FinAlgoritmo
