//// ******************* LLENAR VECTORES ********************

SubProceso llenarVector(vectorGenerico, numVector)
	
	Definir i Como Entero
	para i = 0 Hasta  numVector - 1 Hacer
		
		vectorGenerico(i) = Aleatorio(-100, 100)
		
	FinPara
	
FinSubProceso


//// ******************* MOSTRAR VECTORES ********************

SubProceso mostrarVector(vectorGenerico, numVector)
	
	Definir i Como Entero
	
	Para i = 0 Hasta numVector - 1 Hacer
		Escribir Sin Saltar "[" vectorGenerico(i) "]"
	FinPara
	
	Escribir ""
	
FinSubProceso

//// ******************* SUMA ********************

Funcion sumarVectores(opc1, opc2, opc3 Por Referencia, numVector)
	
	Definir i Como Entero
	
	Para i = 0 Hasta  numVector - 1
		opc3[i] = opc1[i] + opc2[i]
	FinPara
	
FinFuncion

//// ******************* MENU ********************

SubProceso menu
	
	Definir letra Como Caracter
	Definir numVector, i, suma, opc1, opc2, opc3 Como Real
	
	Escribir "Por favor indique el tamaño del vector"
	Leer numVector
	Escribir ""
	
	Dimension opc1(numVector)
	Dimension opc2(numVector)
	Dimension opc3(numVector)
	
	Hacer
		
		Escribir "Selecciona una opcion"
		Escribir "A- Llenar Vector A."
		Escribir "B- Llenar Vector B."
		Escribir "C- Llenar Vector C."
		Escribir "D- Llenar Vector C."
		Escribir "E- Mostrar"
		Escribir "F- Salir"
		Leer letra
		letra = Minusculas(letra)
		Escribir ""
		
		Segun letra Hacer
			"a":
				llenarVector(opc1, numVector)
			"b":
				llenarVector(opc2, numVector)
			"c":
				sumarVectores(opc1,opc2,opc3,numVector)
			"d":
				//	C = B - A
			"e":
				mostrarVector(opc3, numVector)
			"f":
				Borrar Pantalla
				Escribir "Hasta luego"
		FinSegun
		
	Mientras Que letra <> "f"
	
FinSubProceso

Algoritmo ejem4
	
	menu
	
FinAlgoritmo