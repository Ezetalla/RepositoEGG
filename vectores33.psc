/// Realizar un programa que rellene un vector de tamaño N, con valores ingresados por el
///usuario. A continuación, se debe buscar un elemento dentro del arreglo (el número a buscar
///también debe ser ingresado por el usuario). El programa debe indicar la posición donde se
///encuentra el valor. En caso que el número se encuentre repetido dentro del arreglo se deben
///imprimir todas las posiciones donde se encuentra ese valor.
///Finalmente, en caso que el número a buscar no está adentro del arreglo se debe mostrar un
///mensaje.

Algoritmo vectores3
	
	definir vector1, i,tam Como Entero
	definir aux Como Entero
	definir buscar Como Entero
	aux=0
	
	escribir "ingrese tamanio"
	leer tam
	dimension vector1(tam)
	
	para i = 0 hasta tam - 1 con paso 1
		escribir "ingrese 5 valores"
		leer vector1(i)
	fin para
	
	escribir "ingrese un valor a buscar"
	leer buscar
	para i=0 hasta tam - 1 Hacer
		si vector1(i) = buscar
			escribir vector1(i) " en posicion" i+1
		FinSi
		
	FinPara
	
	
FinAlgoritmo
