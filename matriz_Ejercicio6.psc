//6. Una matriz mágica es una matriz cuadrada (tiene igual número de filas que de columnas) que
//  tiene como propiedad especial que la suma de las filas, las columnas y las diagonales es igual.
//  Por ejemplo:
//	2 \  7  \  6
//	9 \  5  \  1
//	4 \  3  \  8
//	En la matriz de ejemplo las sumas son siempre 15. Considere el problema de construir un
//	algoritmo que compruebe si una matriz de datos enteros es mágica o no, y en caso de que
//	sea mágica escribir la suma. Además, el programa deberá comprobar que los números
//	introducidos son correctos, es decir, están entre el 1 y el 9. El usuario ingresa el tamaño de la
//	matriz que no debe superar orden igual a 10.

Algoritmo Clase22_Ejercicio6
	Definir matriz, n, resultados, lenVect Como Entero
	repetir 
		Escribir "Escribe la dimensión de la matriz: " Sin Saltar
		leer n 
		si n > 10 o n < 1 Entonces
			Escribir "Entrada errónea, intenta una dimensión no mayor a 10 y positiva."
		FinSi
	Mientras Que n > 10 o n < 1
	
	lenVect = n+n+2
	Dimension matriz[n,n], resultados[lenVect]
	LlenarMatrizUsuario(matriz, n)
	ImprimirMAtrizCuadrada(matriz, n)
	SumarMatriz(matriz, n, resultados, lenVect)
	
FinAlgoritmo 

Subproceso LlenarMatrizUsuario(matriz, len)
	definir i, j como entero
	para i = 0 Hasta len - 1
		para j = 0 hasta len - 1
			repetir 
				Escribir "Ingrese el valor de la posición [",i,",",j,"] de la matriz (1 al 9): " Sin Saltar
				leer matriz[i,j]  
				si matriz[i,j] > 9 o matriz[i,j] < 1 Entonces
					Escribir "Entrada errónea, intenta otro número del 1 al 9."
				FinSi
			Mientras Que matriz[i,j] > 9 o matriz[i,j] < 1
			
		FinPara
	FinPara
FinSubProceso

Funcion ImprimirMAtrizCuadrada(matriz, len)
	Definir i, j Como Entero
	Escribir ""
	Escribir "Matriz ingresada: "
	para i = 0 Hasta len - 1
		para j = 0 hasta len - 1
			Escribir Sin Saltar "[",matriz[i,j], "]"
		FinPara
		Escribir ""
	FinPara
	Escribir ""
FinFuncion

funcion SumarMatriz(matriz, len, vector, lenVec)
	Definir i, j, sumatoriaFila, sumatoriaCol, sumatoriaDiagPrin, sumatoriaDiagSeg Como Entero
	sumatoriaFila = 0
	sumatoriaCol = 0 
	sumatoriaDiagPrin = 0
	sumatoriaDiagSeg = 0
	
	para i = 0 Hasta len - 1
		para j = 0 hasta len - 1
			sumatoriaFila = sumatoriaFila + matriz[i,j]
			sumatoriaCol = sumatoriaCol + matriz[j,i]
			si i == j Entonces
				sumatoriaDiagPrin = sumatoriaDiagPrin + matriz[i,j]
			FinSi
			
			si i + j == len - 1 Entonces
				sumatoriaDiagSeg = sumatoriaDiagSeg + matriz[i,j]
			FinSi
		FinPara
		
		vector[i] = sumatoriaFila
		Escribir "Sumatoria Fila " i+1 "   : " sumatoriaFila
		sumatoriaFila = 0
		
		vector[i+len] = sumatoriaCol
		Escribir "Sumatoria Columna " i+1 ": " sumatoriaCol
		sumatoriaCol = 0 
	FinPara
	
	vector[lenVec-1] = sumatoriaDiagPrin
	Escribir "Sumatoria Diagonal Principal: " sumatoriaDiagPrin
	vector[lenVec-2] = sumatoriaDiagSeg
	Escribir "Sumatoria Diagonal Segundaria: " sumatoriaDiagSeg
	
	ImprimirVector(vector, lenVec)
	si VerificarVector(vector, lenVec) Entonces
		Escribir "La suma de la matriz mágica es ", vector[0]
	SiNo
		Escribir "No es matriz mágica."
	FinSi
	
FinFuncion


funcion ImprimirVector(vector, len)
	Definir i Como Entero
	Escribir "Vector Sumas: " Sin Saltar
	
	para i = 0 Hasta len - 1
		Escribir Sin Saltar "[",vector[i], "]"
	FinPara
	Escribir ""
FinFuncion


Funcion magico <- VerificarVector(vector, len)
	definir i Como entero
	definir magico Como Logico
	magico = Verdadero
	
	para i = 0 Hasta len - 1
		si vector[0] <> vector[i]
			magico = falso
		fin si
	FinPara
	
FinFuncion
