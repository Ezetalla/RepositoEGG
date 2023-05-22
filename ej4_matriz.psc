//Rellenar en un subproceso una matriz cuadrada con números aleatorios salvo en la diagonal
//	principal, la cual debe rellenarse con ceros. Una vez llena la matriz debe generar otro
//	subproceso para imprimir la matriz.

Algoritmo ej4_matriz
	
	definir fila, colum, matriz Como Real
	escribir "escriba fila de matriz cuadrada"
	leer fila
	escribir "escriba columnas de matriz cuadrada"
	leer colum
	dimension matriz(fila,colum)
	
	rellenar(matriz,fila,colum)
	impri(matriz,fila,colum)
	
FinAlgoritmo

SubProceso rellenar(matriz,fila,colum)
	definir i, j Como Real
	para i=0 hasta fila-1 hacer
		para j=0 hasta colum-1 Hacer
			Si i=j Entonces
				matriz(i,j)=0
			SiNo
				matriz(i,j)=Aleatorio(1, 100)
			FinSi
			
		FinPara
	FinPara	
FinSubProceso

SubProceso impri(matriz,fila,colum)
	definir i, j Como Entero
para i=0 hasta fila-1 con paso 1 hacer
	para j=0 hasta colum-1 con paso 1 Hacer
		escribir "[" matriz(i,j) "]" sin saltar
		
	FinPara
	escribir " "
FinPara	
FinSubProceso


