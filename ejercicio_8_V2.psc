Algoritmo ejercicio_8_V2
	
	Definir usuario, contrasenia como caracter
	usuario=""
	contrasenia=""
	Escribir login(usuario, contrasenia)
	
FinAlgoritmo

funcion retorno <- login (usuario, contrasenia)
	Definir retorno Como Logico
	Definir i Como Entero
	i = 1
	
	Hacer
		Escribir "Ingrese su usuario"
		Leer usuario
		
		Escribir "Ingrese su contraseña"
		Leer contrasenia
		i = i + 1
		Si ((usuario<>'usuario1')o(contrasenia<>'asdasd')) y i<3 Entonces
			Escribir "Usuario o Contraseña incorrecta. Intente de nuevo."
		FinSi
		retorno = (usuario=='usuario1')Y(contrasenia=='asdasd')
		
	Mientras Que (i <= 3)Y(usuario<>'usuario1')Y(contrasenia<>'asdasd')
	
FinFuncion