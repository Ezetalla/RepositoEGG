
Algoritmo desafio
	
	Definir matriz  como caracter
	definir m, n, i Como Entero
	definir palabra Como Caracter
	n=9
	m=12
	
	Dimension matriz[n,m]
	
	inicializarMatriz(matriz,n,m)
	imprimirMatriz(matriz,n,m)	
	
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
		
		agregarPalabra(matriz,i,palabra)
		
	Fin Para
	imprimirMatriz(matriz,n,m)
	escribir buscarR(matriz,2)
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

subproceso agregarPalabra(matriz,n,palabra)
	definir j Como Entero
	para j=0 hasta 11 Hacer
		si j<= longitud(palabra)-1
			matriz(n,j) = subcadena(palabra, j, j)
//		SiNo
//			matriz(n,j) = " "			
		FinSi
	FinPara
	
FinSubProceso

//subprograma buscarR:
//	Se le debe indicar la matriz donde se buscará la letra R y el número de fila en el que buscaremos.
//	Debe comparar cada letra de la fila indicada hasta que encuentre la primera letra ?R?. Ahí debe
//	devolvernos la posición de ?R?.
//Nota: cuidado! debe devolver la posición de la primera R solamente.
//	Aquí podemos usar principios que usamos en el ejercicio 5

funcion posicion <- buscarR(matriz,n)
	Definir j, posicion Como Entero
	posicion=0
	Para j<-0 Hasta 11 Con Paso 1 Hacer
		Si matriz[n,j] == "R" y posicion == 0 Entonces
			posicion=j
		Fin Si
	FinPara
	
	Escribir "en la fila ", n," la R está en "
	
FinFuncion
//
//Se le debe indicar sólo la matriz en donde se acomodarán las palabras.
//Ahora debemos crear una lógica que nos permita mover las palabras de las filas. Recordar que
//podemos llamar a buscarR para saber cuántos espacios hay que mover las palabras.
//Una vez que las palabras se muevan hay que llenar los espacios con asteriscos nuevamente: es
//	decir, si la palabra se mueve dos posiciones a la derecha hay que agregar dos asteriscos a la
//		izquierda de la fila.
//Nota: ¡recuerden que la primera letra ?R? debe quedar en la posición 5 de la matriz! Ya sabemos
//	en qué posición se encuentra ?R? así que sólo debemos llevarla a la posición 5 corriendo toda la
//	palabra.

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





