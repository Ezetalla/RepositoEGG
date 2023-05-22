Algoritmo zombiIntegral
	
	/// validar que la matriz sea de 3x3,4x4 o de 37x37
	/// hacer un programa que permita ingresar una muestra completa, detectar si es válida, y de ser así, que
	/// imprima la matriz y muestre un mensaje que indique si se ha detectado o no el gen Z.
	
	///(A,B,C,D)
	
//Reglas de Resolución:
//	a) Es obligatorio el uso de al menos una variable N-dimensional.
//	b) La muestra la guardamos en una variable en el código, no por consola
	//	c) Subdivida el problema de tal forma de utilizar al menos dos subprogramas.
	
	///subprogramas posibles llenar matriz(aca validar que solo sean abcd y matriz de 3x3 o 4x4 o 37x37 
	/// validad matriz por el gen)
	///imprima matriz y valide si diagonales letras iguales
	definir fila, columna, i, j Como Entero
	definir matriz Como Caracter
	
	escribir "ingrese fila"
	leer fila
	escribir "ingrese columna"
	leer columna
	si fila==3 o fila==4 o fila==37 y columna==3 o columna==4 o columna==37
		Entonces
		dimension matriz(fila,columna)
	SiNo
		escribir "datos invalidos"
		FinSi
	
	
	llenarMatriz(matriz,fila,columna)
	
	
FinAlgoritmo

subproceso llenarMatriz(matriz,fila,columna)
	///decision tamaño matriz
	definir i, j Como Entero
	para i=0 hasta fila-1
		para j=0 hasta columna-1
			escribir "ingrese valor valido (a,b,c,d)"
			leer matriz(i,j)			
		FinPara
	FinPara
	
	validarMatriz1(matriz,fila,columna)
	validarMatriz2(matriz,fila,columna)
	imprimirMatriz(matriz,fila,columna)
	
	

FinSubProceso

subproceso validarMatriz1(matriz,fila,columna)
	
	/// validar matriz tiene que confirmar que la letras diagonales sean iguales en ambos
	/// sentidos
	definir i,j Como Entero
	definir valida como logico
	
	para i=0 hasta fila-1 Hacer
		para j=0 hasta columna-1 Hacer
			si i==j y matriz(i,j)=="a" o matriz(i,j)=="b" o matriz(i,j)=="c" o matriz(i,j)=="d"
				valida=Verdadero
			SiNo
				valida=Falso
				
			FinSi
			FinPara
		FinPara
		si valida=verdadero Entonces
			
			escribir "diagonal correcta"
		sino 
		escribir	"diagonal incorrecta"
		FinSi
	
	
	
FinSubProceso

subproceso imprimirMatriz(matriz,fila,columna)
	definir i,j Como Entero
	para i=0 hasta fila-1
		para j=0 hasta columna-1
			escribir "<" matriz(i,j) ">" sin saltar
		FinPara
		escribir " "
	FinPara
	
FinSubProceso

subproceso validarMatriz2(matriz,fila,columna)
	definir i, j como entero
	definir valida1 Como Logico
	
	para i=0 hasta fila - 1
		para j=0 hasta fila - 1
			si (i+j)==(fila-1) y matriz(i,j)=="a" o matriz(i,j)=="b" o matriz(i,j)=="c" o matriz(i,j)=="d"
				Entonces
				valida1=Verdadero
			SiNo
				valida1=falso
				
			FinSi
		FinPara
	FinPara
	
	si valida1=verdadero 
		Entonces
		
		escribir "diagonal correcta"
	sino 
		escribir	"diagonal incorrecta"
	FinSi
	
FinSubProceso

