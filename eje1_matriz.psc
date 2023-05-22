//Realizar un programa que rellene una matriz de 3x3 con 9 valores ingresados por el usuario y
//los muestre por pantalla.

Algoritmo eje1_vector
	
	definir i, j, vector, m , n Como Real
	
	dimension vector(3,3)
	i=0
	j=0
	para m=0 hasta 2 con paso 1 hacer
		para n=0 hasta 2 con paso 1 Hacer
				escribir "ingrese valor del elemento [", m ,",", n,"]" Sin Saltar
			leer vector(m,n)
		FinPara
	FinPara
	
	para i=0 hasta 2
		para j=0 hasta 2
			escribir vector(i,j) sin saltar
		FinPara
	FinPara
	
	
	
FinAlgoritmo
