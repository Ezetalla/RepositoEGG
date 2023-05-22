Algoritmo tallerPractico6
	
	Definir matriz como real
	Definir i,j, n Como Entero
	
	Repetir
		Escribir "Ingresa el tamaño de la matriz menor a 10"
		Leer n
	Mientras Que n>10

	Dimension matriz[ n,n]
	
	rellenar(matriz,n)
	print(matriz, n)
	Escribir compr(matriz,n)
	
FinAlgoritmo

Funcion salida <- compr( matriz, n )
	
	Definir i, j, sum,sumCol,sumDiag,sumInv, ref, cont Como Entero
	Definir com, salida como logico
	
	ref=0
	sumInv=0
	sumDiag=0
	com=verdadero
	cont=0
	
	//el valor de la primera suma para comparar
	Para i=0 Hasta n-1 Hacer
		ref=ref+matriz(0,i)
	Fin Para
	
	Escribir "la referencia es : " ref
	
	//comprobacion filas y columnas
	Para i=0 Hasta n-1 Hacer
		sum=0
		sumCol=0
		Para j=0 hasta n-1 Hacer
			sum=sum+matriz(i,j)
			sumCol=sumCol+matriz(j,i)
		FinPara
		com=com y (sum==ref) y (sumCol==ref)
		
		Escribir "la suma de las filas es: " sum
		Escribir "la suma de las columnas es: " sumCol
		
	Fin Para
	
	//comprobacion diagonal
	
	Para i=0 Hasta n-1 Hacer
			sumDiag=sumDiag+matriz(i,i)
		Fin Para
		com=com y (sumDiag==ref)
	Escribir "la suma de la diagonal es : " sumDiag
	
	//comprobacion diagonal invertida

	Para i=n-1 Hasta 0 con paso -1 Hacer
		sumInv=sumInv+matriz(cont,i)
		cont=cont+1
	Fin Para
	com=com y (sumInv==ref)
	Escribir "la suma de la diagonal invertida es : " sumInv
	
	salida=com
Fin Funcion

SubProceso rellenar(matriz,n)
	
	Definir i, j Como Entero
	
	Para i=0 hasta n-1 Hacer
		Para j=0 hasta n-1 Hacer
			
			Repetir
				Escribir "Ingrese el valor del elemento [", i," ] [ ",j," ]"
				leer matriz(i,j)
			Mientras Que matriz(i,j)> 11 o matriz(i,j)<1
			
		FinPara
	FinPara
	
FinSubProceso

SubProceso print(matriz,n)
	
	Definir i, j Como Entero
	Para i=0 hasta n-1 Hacer
		Para j=0 hasta n-1 Hacer
			Escribir Sin Saltar "[", matriz[i,j],"]"
		FinPara
		Escribir " "
	FinPara
	
FinSubProceso
