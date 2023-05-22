//Dada una matriz de orden n * m (donde n y m son valores ingresados por el usuario) realizar
//un subprograma que llene la matriz de numeros aleatorios. Despues, crearemos otro
//subprograma que calcule y muestre la suma de los elementos de la matriz. Mostrar la matriz y
//los resultados por pantalla.

Algoritmo ej3_matriz
	
	definir fila, colum, matriz Como Real
	escribir "escriba fila"
	leer fila
	escribir "escriba columnas"
	leer colum
	dimension matriz(fila,colum)
	
	rellenar(matriz,fila, colum)
	
FinAlgoritmo

SubProceso rellenar(matriz,fila,colum)
		definir i, j Como Real
	para i=0 hasta fila-1 con paso 1 hacer
		para j=0 hasta colum-1 con paso 1 Hacer
			matriz(i,j)=Aleatorio(1,5)
		FinPara
	FinPara	
	
	para i=0 hasta fila-1 con paso 1 hacer
		para j=0 hasta colum-1 con paso 1 Hacer
			escribir matriz(i,j) sin saltar
			
		FinPara
		escribir " "
	FinPara	
	
	sumar(matriz, fila, colum)
FinSubProceso

SubProceso sumar(matriz, fila, colum)
	definir i, j, aux Como Real
	aux=0
	para i=0 hasta fila-1 con paso 1 hacer
		para j=0 hasta colum-1 con paso 1 Hacer
			aux = aux + matriz(i,j)
		FinPara
	FinPara	
	
	escribir "el total de la suma es", aux
	
FinSubProceso
	