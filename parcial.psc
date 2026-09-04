
	Funcion tarifa <- ObtenerTarifa(tipo)
		Definir tarifa Como Real
		
		Segun tipo Hacer
			1:
				tarifa <- 4000
			2:
				tarifa <- 2000
			3:
				tarifa <- 5500
		FinSegun
FinFuncion


Funcion descuento <- ObtenerDescuento(horas)
	Definir descuento Como Real
	
	Si horas >= 8 Entonces
		descuento <- 0.15
	SiNo
		Si horas >= 5 Entonces
			descuento <- 0.10
		SiNo
			descuento <- 0
		FinSi
	FinSi
FinFuncion


Algoritmo Parqueadero
	
	Definir cantidad, i Como Entero
	Definir placa Como Cadena
	Definir tipo, entrada, salida, horas Como Entero
	Definir tarifa, valorBase, porcentajeDescuento Como Real
	Definir valorDescuento, valorConDescuento, recargo, total Como Real
	Definir totalRecaudado, promedio Como Real
	Definir cantidadAutos, cantidadMotos, cantidadCamionetas Como Entero
	Definir cantidad5Horas Como Entero
	Definir mayorValor Como Real
	Definir placaMayor Como Cadena
	Definir primerVehiculo Como Logico
	
	// Inicialización de contadores y acumuladores
	totalRecaudado <- 0
	cantidadAutos <- 0
	cantidadMotos <- 0
	cantidadCamionetas <- 0
	cantidad5Horas <- 0
	mayorValor <- 0
	placaMayor <- ""
	primerVehiculo <- Verdadero
	
	Escribir "======================================"
	Escribir "       SISTEMA DE PARQUEADERO"
	Escribir "======================================"
	
	Escribir "Ingrese la cantidad de vehiculos:"
	Leer cantidad
	
	Para i <- 1 Hasta cantidad Hacer
		
		Escribir ""
		Escribir "--------- VEHICULO ", i, " ---------"
		
		Escribir "Ingrese la placa:"
		Leer placa
		
		// Validar tipo de vehículo
		Repetir
			Escribir "Tipo de vehiculo:"
			Escribir "1. Automovil"
			Escribir "2. Motocicleta"
			Escribir "3. Camioneta"
			Leer tipo
			
			Si tipo < 1 O tipo > 3 Entonces
				Escribir "Tipo incorrecto. Intente nuevamente."
			FinSi
		Hasta Que tipo >= 1 Y tipo <= 3
		
		// Validar hora de entrada
		Repetir
			Escribir "Ingrese hora de entrada (0-23):"
			Leer entrada
			
			Si entrada < 0 O entrada > 23 Entonces
				Escribir "Hora incorrecta. Debe estar entre 0 y 23."
			FinSi
		Hasta Que entrada >= 0 Y entrada <= 23
		
		// Validar hora de salida
		Repetir
			Escribir "Ingrese hora de salida (0-23):"
			Leer salida
			
			Si salida <= entrada O salida > 23 Entonces
				Escribir "Hora de salida incorrecta."
				Escribir "Debe ser mayor que la hora de entrada."
			FinSi
		Hasta Que salida > entrada Y salida <= 23
		
		// Calcular horas de permanencia
		horas <- salida - entrada
		
		// Obtener tarifa mediante función
		tarifa <- ObtenerTarifa(tipo)
		
		// Calcular valor base
		valorBase <- horas * tarifa
		
		// Obtener porcentaje de descuento
		porcentajeDescuento <- ObtenerDescuento(horas)
		
		// Calcular valor del descuento
		valorDescuento <- valorBase * porcentajeDescuento
		
		// Calcular valor después del descuento
		valorConDescuento <- valorBase - valorDescuento
		
		// Aplicar recargo
		Si valorConDescuento > 30000 Entonces
			recargo <- 2500
		SiNo
			recargo <- 0
		FinSi
		
		// Calcular total final
		total <- valorConDescuento + recargo
		
		// Contadores por tipo
		Segun tipo Hacer
			1:
				cantidadAutos <- cantidadAutos + 1
			2:
				cantidadMotos <- cantidadMotos + 1
			3:
				cantidadCamionetas <- cantidadCamionetas + 1
		FinSegun
		
		// Contar vehículos con 5 horas o más
		Si horas >= 5 Entonces
			cantidad5Horas <- cantidad5Horas + 1
		FinSi
		
		// Acumulador del total recaudado
		totalRecaudado <- totalRecaudado + total
		
		// Buscar el mayor valor pagado
		Si primerVehiculo = Verdadero Entonces
			mayorValor <- total
			placaMayor <- placa
			primerVehiculo <- Falso
		SiNo
			Si total > mayorValor Entonces
				mayorValor <- total
				placaMayor <- placa
			FinSi
		FinSi
		
		// Mostrar información del vehículo
		Escribir ""
		Escribir "========= RESUMEN DEL VEHICULO ========="
		Escribir "Placa: ", placa
		
		Segun tipo Hacer
			1:
				Escribir "Tipo: Automovil"
			2:
				Escribir "Tipo: Motocicleta"
			3:
				Escribir "Tipo: Camioneta"
		FinSegun
		
		Escribir "Horas de permanencia: ", horas
		Escribir "Valor base: $", valorBase
		Escribir "Descuento aplicado: $", valorDescuento
		Escribir "Recargo: $", recargo
		Escribir "Total final: $", total
		
	FinPara
	
	// Calcular promedio
	Si cantidad > 0 Entonces
		promedio <- totalRecaudado / cantidad
	SiNo
		promedio <- 0
	FinSi
	
	// Resumen final
	Escribir ""
	Escribir "======================================"
	Escribir "       RESUMEN DE LA JORNADA"
	Escribir "======================================"
	Escribir "Total recaudado: $", totalRecaudado
	Escribir "Cantidad de automoviles: ", cantidadAutos
	Escribir "Cantidad de motocicletas: ", cantidadMotos
	Escribir "Cantidad de camionetas: ", cantidadCamionetas
	Escribir "Promedio pagado por vehiculo: $", promedio
	Escribir "Placa que pago el mayor valor: ", placaMayor
	Escribir "Mayor valor pagado: $", mayorValor
	Escribir "Vehiculos con 5 horas o mas: ", cantidad5Horas

FinAlgoritmo
