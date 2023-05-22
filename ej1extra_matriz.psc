//Realizar un programa que rellene de números aleatorios una matriz a través de un
//subprograma y generar otro subprograma que muestre por pantalla la matriz final.


Algoritmo ej1extra_matriz
	
	definir fila, colum, matriz Como Real
	escribir "escriba fila"
	leer fila
	escribir "escriba columnas"
	leer colum
	dimension matriz(fila,colum)
	
	rellenar(matriz,fila, colum)
	mostra(matriz,fila,colum)
FinAlgoritmo

SubProceso rellenar(matriz,fila,colum)
	definir i, j Como Real
	para i=0 hasta fila-1 con paso 1 hacer
		para j=0 hasta colum-1 con paso 1 Hacer
			matriz(i,j)=Aleatorio(1,5)
		FinPara
	FinPara	
FinSubProceso

subproceso mostra(matriz, fila, colum)
	definir i, j Como Real
	para i=0 hasta fila-1 con paso 1 hacer
		para j=0 hasta colum-1 con paso 1 Hacer
			escribir matriz(i,j) sin saltar
			
		FinPara
		escribir " "
	FinPara	
	
FinSubProceso



