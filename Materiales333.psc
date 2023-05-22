Algoritmo sin_titulo
	definir opc Como entero
	
	menu(opc)
	
FinAlgoritmo
SubProceso menu(opc Por Referencia)
	Definir cemento,pintura, arena,ladrillos, piedras, hierro8,hierro4, hierro6,hierro10, ancho,largo,alto como real
	cemento = 0
	hierro8 = 0
	hierro4 = 0
	piedras = 0
	arena = 0
	
	Hacer
		Escribir "------------------------------------------"
		Escribir "ingrese opcion"
		
		Escribir "1.! Calcular muro de ladrillo"
		Escribir "2.! Calcular viga de hormigón"
		Escribir "3.! Calcular columnas de hormigón"
		Escribir "4.! Calcular contrapisos"
		Escribir "5.! Calcular techo"
		Escribir "6.! Calcular pisos"
		Escribir "7.! Calcular pintura"
		Escribir "8.! Calcular iluminación"
		Escribir "9.! Salir"
		leer opc
		Segun opc Hacer
			1:
				calcularMuro(muro)
			2:
				calcularViga(cemento, arena, piedras, hierro8, hierro4)
			3:
				calcularColumna(cemento,arena,piedras, hierro10,hierro4,largo)
			4:
				calcularContrapisos(cemento,arena,piedras,largo,ancho,alto)
			5:
				calcularTecho(largo, ancho)
			6:
				calcularPisos(largo,ancho)//m2 totales, q pida el tamaño de la habitacion
			7:
				calcularPintura(pintura)
			8:
				calcularIluminacion(largo, ancho)
			9:
				Escribir "salir"
			De Otro Modo:
				Escribir "opcion incorrecta"
		FinSegun
	Mientras Que opc<>9
	Escribir "fin de ejercicio"
FinSubProceso
//subprogramas calcularSuperficie y calcularVolumen
//Haremos ambos para usarlos dentro de los otros subprogramas. El usuario no puede acceder a
//	ellos.
SubProceso calcularSuperficie(ancho,largo,superficie Por Referencia)
	
	superficie=ancho*largo
	
FinSubProceso
SubProceso calcularVolumen(ancho,alto,largo,volumen Por Referencia)
	
	volumen = ancho * largo * alto
	
FinSubProceso
Subproceso calcularMuro(muro Por Referencia)
	
    Definir espesor, largo, alto, superficie, cantidad_cemento, cantidad_arena, cantidad_ladrillos, cemento_por_m2,arena_por_m3,ladrillos_por_m2  Como Real
	Definir cementoM2, arenaM3,ladrillosM2, cantidad_cement, cantidad_aren, cantidad_ladrillo  Como Real
    
    Escribir "Ingrese el espesor del muro en cm (20 ó 30): "
    Leer espesor
    Escribir "Ingrese el largo del muro (en metros): "
    Leer largo
    Escribir "Ingrese la altura del muro (en metros): "
    Leer alto
    
    superficie = largo * alto
	cemento_por_m2 = 15.2
	arena_por_m3 = 0.115
	ladrillos_por_m2 = 120
	
	cantidad_cemento = cemento_por_m2 * superficie
    cantidad_arena = arena_por_m3 * superficie
    cantidad_ladrillos = ladrillos_por_m2 * superficie
	
	cementoM2 = 10.9
	arenaM3 = 0.09
	ladrillosM2 = 90
	
	cantidad_cement = cementoM2 * superficie
    cantidad_aren = arenaM3 * superficie
    cantidad_ladrillo = ladrillosM2 * superficie
    
    Si espesor = 30 entonces

		Escribir "La superficie del muro es de ", superficie, " metros cuadrados"
		Escribir "Para construir el muro se necesitan: "
		Escribir cantidad_cemento, " kg de cemento"
		Escribir cantidad_arena, " m3 de arena"
		Escribir cantidad_ladrillos, " ladrillos"
    Sino si espesor = 20 Entonces
			
			Escribir "La superficie del muro es de ", superficie, " metros cuadrados"
			Escribir "Para construir el muro se necesitan: "
			Escribir cantidad_cement, " kg de cemento"
			Escribir cantidad_aren, " m3 de arena"
			Escribir cantidad_ladrillo, " ladrillos"
			
		FinSi
	FinSi
    
FinSubproceso

SubProceso calcularViga(cemento Por Referencia, arena Por Referencia, piedras Por Referencia, hierro8 Por Referencia, hierro4 Por Referencia)
	Definir largo Como real
	
	Escribir "indique por favor el largo de la viga"
	Leer largo
	
	cemento = largo * 9
	hierro8 = largo * 4
	hierro4 = largo * 3
	piedras = largo * 0.02
	arena =  largo * 0.02
	
	Escribir "usted necesita: " 
	Escribir cemento " kg de cemento"
	Escribir  hierro8 " m de hierro8"
	Escribir hierro4 " m de hierro4"
	Escribir piedras " m2 de piedras"
	Escribir arena " m3 de arena"
FinSubProceso

SubProceso calcularColumna(cemento Por Referencia,arena Por Referencia,piedras Por Referencia, hierro10 Por Referencia,hierro4 Por Referencia,largo Por Referencia)
	
	
	Escribir "Ingrese el largo de la columna en metros."
	Leer largo
	cemento=7.5*largo
	arena=0.016*largo
	piedras=0.016*largo
	hierro10=6*largo
	hierro4=3*largo
	
	Escribir "Cantidad de materiales necesaria."
	Escribir "Cemento: ",cemento, " kg."
	Escribir "Arena: ",arena, " m3"
	Escribir "Piedra: ",piedras, " m2"
	Escribir "Hierro del 10: ",hierro10, " metros."
	Escribir "Hierro del 4: ",hierro4, " metros."
	
	
FinSubProceso

SubProceso calcularContrapisos(cemento Por Referencia,arena Por Referencia,piedras Por Referencia,largo Por Referencia,ancho Por Referencia,alto Por Referencia)
	Definir volumen Como Real
	Escribir "ingrese medidas"
	Escribir "ingrese ancho"
	Leer ancho 
	Escribir "ingrese largo"
	Leer largo
	Escribir "ingrese espesor"
	Leer alto
	
	calcularVolumen(ancho,largo,alto,volumen)
	
	cemento=105*volumen
	arena= 0.45*volumen
	piedras=0.9*volumen
	
	Escribir "Calculo de materiales del contrapiso: "
	Escribir ""
	Escribir "El total de cemento necesario es de " cemento " kg"
	Escribir "El total de arena necesaria es de " arena " m3"
	Escribir "El total de piedra necesario es de " piedras " m3"
	
FinSubProceso

SubProceso calcularTecho(largo por referencia, ancho Por Referencia)
	definir auxcuadrado, cemento, arena, piedra, hierro8, hierro6 Como Real
	
	Escribir "ingrese el largo "
	Leer largo
	Escribir "ingrese el ancho"
	Leer ancho
	/// podriamos llamar a la función 
	
	auxcuadrado = largo * ancho	
	cemento = 33
	arena= 0.072
	piedra= 0.072
	hierro8= 7
	hierro6= 4
	
	Escribir "se nececesitan ", cemento * auxcuadrado, "kg de cemento"
	Escribir "se nececesitan ", arena * auxcuadrado, "m3 de arena"
	Escribir "se nececesitan ", piedra * auxcuadrado, "m3 de piedra"
	Escribir "se nececesitan ", hierro8 * auxcuadrado, "m de hierro8"
	Escribir "se nececesitan ", hierro6 * auxcuadrado, "m de hierro6"
	
FinSubProceso
//Nos debe pedir ancho y largo del paño de piso a colocar. Teniendo esos datos se debe calcular la
//superficie y añadirle un 10% extra por recortes
//Mostrar el resultado en m2

SubProceso calcularPisos(largo Por Referencia,ancho Por Referencia)
	Definir superficie Como Real
	
	Escribir "ingrese el ancho"
	Leer ancho
	Escribir "ingrese el largo"
	Leer largo
	
	calcularSuperficie(ancho,largo,superficie)
	Escribir "el total de m2 a comprar es: " superficie * 1.1
	
		
FinSubProceso
//Nos debe pedir la superficie del muro y mostrar cuánta pintura necesitamos teniendo en cuenta
//que rinde 6 m2 por litro de pintura.
SubProceso calcularPintura(pintura Por Referencia)
	Definir superficie Como Real
	Escribir "Ingrese la supeficie del muro."
	Leer superficie
	
	pintura=superficie*6
	Escribir "La cantidad de pintura que se necesita es ", pintura
FinSubProceso

//Nos debe pedir la superficie de la habitación. La iluminación la calculamos de la siguiente forma:
//	superficie * 0.20. Eso nos da la cantidad mínima de superficie de iluminación natural (ventanas y
//	puertas de vidrio). Mostrar resultado

SubProceso calcularIluminacion(largo Por Referencia, ancho Por Referencia)
	Definir superficie, iluminacion Como Real
	Escribir "Ingrese la supeficie de la habitación."
	Leer superficie
	
	iluminacion=superficie*0.2
	Escribir "La cantidad mínima de superficie de iluminación natural ", iluminacion
FinSubProceso
	