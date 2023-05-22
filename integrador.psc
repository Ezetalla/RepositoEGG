Algoritmo integrador
	
	Definir matriz, palabra  como caracter
	Definir fila, i, m,n como real
	
	m=9
	n=12
	
	Dimension matriz[ m,n]
	
	inicializarMatriz(matriz,m,n)
	imprimirMatriz(matriz,m,n)
	
	Para i=0 Hasta 8 Hacer
		
		Segun i Hacer
			0:
				palabra="VECTOR"
			1:
				palabra="MATRIX"
			2:
				palabra="PROGRAMA"
			3:
				palabra="SUBPROGRAMA"
			4:
				palabra="SUBPROCESO"
			5:
				palabra="VARIABLE"
			6:
				palabra="ENTERO"
			7:
				palabra="PARA"
			8:
				palabra="MIENTRAS"
				
		Fin Segun

		agregarPalabra(matriz,palabra, i)
	
	Fin Para

	imprimirMatriz(matriz,m,n)
	
	Para i=0 hasta 8 Hacer
		
		Escribir buscarR(matriz, i)
		
	FinPara
	
	acomodarPalabra(matriz)
	
FinAlgoritmo

SubProceso inicializarMatriz(matriz Por Referencia,n,m)
	Definir i, j Como Entero
	Para i=0 hasta n-1 Hacer
		Para j=0 hasta m-1 Hacer
			matriz[i,j]="*"
		FinPara
	FinPara
FinSubProceso


SubProceso imprimirMatriz(matriz,n,m)
	Definir i, j Como Entero
	Para i=0 hasta n-1 Hacer
		Para j=0 hasta m-1 Hacer
			Escribir Sin Saltar " ", matriz[i,j]," "
		FinPara
		Escribir " "
	FinPara
	Escribir " "
FinSubProceso

SubProceso agregarPalabra(matriz,palabra, fila)

	Definir i, j Como Entero
	
	Para i=0 hasta longitud(palabra)-1 Hacer
		
		matriz(fila,i)=SubCadena(palabra,i,i)
		
	FinPara
	
FinSubProceso

Funcion posR <- buscarR(matriz, fila)
	
	Definir i,  posR Como Entero

	posR=0
	
	Para i=0 hasta 11 Hacer
		
		Si matriz(fila,i)=="R" y posR==0 Entonces
			posR=i

		Fin Si
	FinPara

//	Escribir "en la fila ", fila," la R está en "
Fin Funcion



subproceso acomodarPalabra(matriz)
	
	Definir fila,i,j como entero
	Definir matriz2 como caracter
	
	Dimension matriz2[ 9,12]
	
	Para i=0 hasta 8 Hacer
		
		Para j=0 hasta 11 Hacer
			matriz2(i,j)=matriz(i,j)

		FinPara
	FinPara
	
	Para i=0 hasta 8  Hacer
		
		fila= (5-buscarR(matriz, i))
		
		Para j=0 Hasta 11  Hacer
			
			Si j>=fila Entonces
				
				matriz(i,j)=matriz2(i,j-(fila))
			sino	
				matriz(i,j)="*"
			Fin Si
			
		Fin Para
		
	FinPara
	
	imprimirMatriz(matriz,9,12)
FinSubProceso
