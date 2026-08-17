Algoritmo sin_titulo
	Definir nombre como cadena 
	Definir edad, semestre Como Entero
	Definir promedio Como Real
	Definir activo Como Logico
	Definir esMayorEdad, promedioAlto, cumpleAmbas Como Logico
	Escribir "Ingrese un nombre de cualquier estudiante y al finalizar preciona enter para el siguiente paso"
	Leer nombre
	Escribir "por fabor ingrese la edad y luego precioione enter"
	Leer edad
	Escribir "Ingrese el semestre en que va el estudiante y cuando termine precione nuevamente enter"
	Leer semestre
	Escribir "por ultimo escriba el promedio del estudiante y para finalizar precione enter"
	Leer promedio
	Escribir "¿El estudiante esta activo? (Verdadero/Falso)"
	esMayorEdad <- edad >= 18
	promedioAlto<- promedio >=4.0
	cumpleAmbas<- esMayorEdad y promedioAlto
	Escribir "DATOS DEL ESTUDIANTE" 
	Escribir "Nombre ",semestre
	Escribir " Edad", nombre
	Escribir "Semestre",semestre
	Escribir "Promedio",promedio
	Escribir "Activo", activo
	Escribir "¿Es mayor de edad?", esMayorEdad
	Escribir "¿Tiene promedio alto?",promedioAlto
	Escribir "¿Cumple ambas condiciones?", cumpleAmbas
FinAlgoritmo
