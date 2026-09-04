
	Funcion promedio <- CalcularPromedio(nota1, nota2, nota3)
		Definir promedio Como Real
		
		promedio <- (nota1 + nota2 + nota3) / 3
FinFuncion


Funcion estado <- DeterminarEstado(promedio)
	Definir estado Como Cadena
	
	Si promedio < 3.0 Entonces
		estado <- "Reprobado"
	SiNo
		Si promedio < 4.0 Entonces
			estado <- "Aprobado"
		SiNo
			Si promedio <= 4.5 Entonces
				estado <- "Sobresaliente"
			SiNo
				estado <- "Excelente"
			FinSi
		FinSi
	FinSi
FinFuncion


Algoritmo ResultadosAcademicos
	
	Definir cantidad, i Como Entero
	Definir nombre Como Cadena
	Definir nota1, nota2, nota3 Como Real
	Definir promedio Como Real
	Definir estado Como Cadena
	Definir aprobados, reprobados Como Entero
	Definir aprobadosTresNotas Como Entero
	Definir totalPromedios, promedioGeneral Como Real
	Definir porcentajeAprobacion Como Real
	Definir mayorPromedio, menorPromedio Como Real
	Definir estudianteMayor, estudianteMenor Como Cadena
	Definir primerEstudiante Como Logico
	
	// Inicializar contadores y acumuladores
	aprobados <- 0
	reprobados <- 0
	aprobadosTresNotas <- 0
	totalPromedios <- 0
	mayorPromedio <- 0
	menorPromedio <- 0
	estudianteMayor <- ""
	estudianteMenor <- ""
	primerEstudiante <- Verdadero
	
	
	// Validar cantidad de estudiantes
	Repetir
		Escribir "Ingrese la cantidad de estudiantes:"
		Leer cantidad
		
		Si cantidad <= 0 Entonces
			Escribir "Error: la cantidad debe ser mayor que cero."
		FinSi
	Hasta Que cantidad > 0
	
	
	// Recorrer todos los estudiantes
	Para i <- 1 Hasta cantidad Hacer
		
		Escribir ""
		Escribir "======================================"
		Escribir "          ESTUDIANTE ", i
		Escribir "======================================"
		
		Escribir "Ingrese el nombre del estudiante:"
		Leer nombre
		
		
		// Validar nota 1
		Repetir
			Escribir "Ingrese la nota 1 (0.0 - 5.0):"
			Leer nota1
			
			Si nota1 < 0 O nota1 > 5 Entonces
				Escribir "Nota invalida. Debe estar entre 0.0 y 5.0."
			FinSi
		Hasta Que nota1 >= 0 Y nota1 <= 5
		
		
		// Validar nota 2
		Repetir
			Escribir "Ingrese la nota 2 (0.0 - 5.0):"
			Leer nota2
			
			Si nota2 < 0 O nota2 > 5 Entonces
				Escribir "Nota invalida. Debe estar entre 0.0 y 5.0."
			FinSi
		Hasta Que nota2 >= 0 Y nota2 <= 5
		
		
		// Validar nota 3
		Repetir
			Escribir "Ingrese la nota 3 (0.0 - 5.0):"
			Leer nota3
			
			Si nota3 < 0 O nota3 > 5 Entonces
				Escribir "Nota invalida. Debe estar entre 0.0 y 5.0."
			FinSi
		Hasta Que nota3 >= 0 Y nota3 <= 5
		
		
		// Calcular promedio mediante función
		promedio <- CalcularPromedio(nota1, nota2, nota3)
		
		
		// Determinar estado mediante función
		estado <- DeterminarEstado(promedio)
		
		
		// Contar aprobados y reprobados
		Si promedio >= 3.0 Entonces
			aprobados <- aprobados + 1
		SiNo
			reprobados <- reprobados + 1
		FinSi
		
		
		// Verificar si aprobó las tres notas individualmente
		Si nota1 >= 3.0 Y nota2 >= 3.0 Y nota3 >= 3.0 Entonces
			aprobadosTresNotas <- aprobadosTresNotas + 1
		FinSi
		
		
		// Acumular promedios
		totalPromedios <- totalPromedios + promedio
		
		
		// Determinar mayor y menor promedio
		Si primerEstudiante = Verdadero Entonces
			
			mayorPromedio <- promedio
			menorPromedio <- promedio
			
			estudianteMayor <- nombre
			estudianteMenor <- nombre
			
			primerEstudiante <- Falso
			
		SiNo
			
			Si promedio > mayorPromedio Entonces
				mayorPromedio <- promedio
				estudianteMayor <- nombre
			FinSi
			
			Si promedio < menorPromedio Entonces
				menorPromedio <- promedio
				estudianteMenor <- nombre
			FinSi
			
		FinSi
		
		
		// Mostrar resultado individual
		Escribir ""
		Escribir "========= RESULTADO ========="
		Escribir "Estudiante: ", nombre
		Escribir "Nota 1: ", nota1
		Escribir "Nota 2: ", nota2
		Escribir "Nota 3: ", nota3
		Escribir "Promedio: ", promedio
		Escribir "Estado academico: ", estado
		
		Si nota1 >= 3.0 Y nota2 >= 3.0 Y nota3 >= 3.0 Entonces
			Escribir "Aprobo las tres notas individualmente: SI"
		SiNo
			Escribir "Aprobo las tres notas individualmente: NO"
		FinSi
		
	FinPara
	
	
	// Calcular promedio general
	promedioGeneral <- totalPromedios / cantidad
	
	
	// Calcular porcentaje de aprobación
	porcentajeAprobacion <- (aprobados * 100) / cantidad
	
	
	// Mostrar resumen general
	Escribir ""
	Escribir "======================================"
	Escribir "          RESUMEN GENERAL"
	Escribir "======================================"
	Escribir "Cantidad de estudiantes: ", cantidad
	Escribir "Estudiantes aprobados: ", aprobados
	Escribir "Estudiantes reprobados: ", reprobados
	Escribir "Porcentaje de aprobacion: ", porcentajeAprobacion, "%"
	Escribir "Promedio general del grupo: ", promedioGeneral
	Escribir "Estudiante con mayor promedio: ", estudianteMayor
	Escribir "Mayor promedio: ", mayorPromedio
	Escribir "Estudiante con menor promedio: ", estudianteMenor
	Escribir "Menor promedio: ", menorPromedio
	Escribir "Estudiantes que aprobaron las tres notas: ", aprobadosTresNotas
	
FinAlgoritmo
FinAlgoritmo
