
	Funcion descuento <- ObtenerDescuento(subtotal)
		Definir descuento Como Real
		
		Si subtotal >= 300000 Entonces
			descuento <- 0.10
		SiNo
			Si subtotal >= 100000 Y subtotal < 300000 Entonces
				descuento <- 0.05
			SiNo
				descuento <- 0
			FinSi
		FinSi
FinFuncion


Funcion iva <- CalcularIVA(valor)
	Definir iva Como Real
	
	iva <- valor * 0.19
FinFuncion


Algoritmo Tienda
	
	Definir clientes, i, productos, j Como Entero
	Definir nombreCliente, nombreProducto Como Cadena
	Definir precio, cantidad, subtotalProducto Como Real
	Definir subtotalCompra, porcentajeDescuento Como Real
	Definir valorDescuento, valorDescontado Como Real
	Definir valorIVA, totalFinal Como Real
	Definir totalVendido, promedioCompra Como Real
	Definir mayorCompra Como Real
	Definir clienteMayorCompra Como Cadena
	Definir primerCliente Como Logico
	
	// Inicializar acumuladores y variables
	totalVendido <- 0
	mayorCompra <- 0
	clienteMayorCompra <- ""
	primerCliente <- Verdadero
	
	// Validar cantidad de clientes
	Repetir
		Escribir "Ingrese la cantidad de clientes:"
		Leer clientes
		
		Si clientes <= 0 Entonces
			Escribir "Error: la cantidad de clientes debe ser mayor que cero."
		FinSi
	Hasta Que clientes > 0
	
	
	// Ciclo para procesar cada cliente
	Para i <- 1 Hasta clientes Hacer
		
		Escribir ""
		Escribir "======================================"
		Escribir "          CLIENTE ", i
		Escribir "======================================"
		
		Escribir "Ingrese el nombre del cliente:"
		Leer nombreCliente
		
		// Validar cantidad de productos
		Repetir
			Escribir "Ingrese la cantidad de productos:"
			Leer productos
			
			Si productos <= 0 Entonces
				Escribir "Error: la cantidad debe ser mayor que cero."
			FinSi
		Hasta Que productos > 0
		
		
		// Inicializar subtotal de la compra
		subtotalCompra <- 0
		
		
		// Ciclo para procesar los productos
		Para j <- 1 Hasta productos Hacer
			
			Escribir ""
			Escribir "------- PRODUCTO ", j, " -------"
			
			Escribir "Ingrese el nombre del producto:"
			Leer nombreProducto
			
			
			// Validar precio
			Repetir
				Escribir "Ingrese el precio unitario:"
				Leer precio
				
				Si precio <= 0 Entonces
					Escribir "Error: el precio debe ser mayor que cero."
				FinSi
			Hasta Que precio > 0
			
			
			// Validar cantidad
			Repetir
				Escribir "Ingrese la cantidad adquirida:"
				Leer cantidad
				
				Si cantidad <= 0 Entonces
					Escribir "Error: la cantidad debe ser mayor que cero."
				FinSi
			Hasta Que cantidad > 0
			
			
			// Calcular subtotal del producto
			subtotalProducto <- precio * cantidad
			
			// Acumular subtotal
			subtotalCompra <- subtotalCompra + subtotalProducto
			
			Escribir "Subtotal del producto: $", subtotalProducto
			
		FinPara
		
		
		// Obtener porcentaje de descuento
		porcentajeDescuento <- ObtenerDescuento(subtotalCompra)
		
		// Calcular valor del descuento
		valorDescuento <- subtotalCompra * porcentajeDescuento
		
		// Valor después del descuento
		valorDescontado <- subtotalCompra - valorDescuento
		
		// Calcular IVA
		valorIVA <- CalcularIVA(valorDescontado)
		
		// Calcular total final
		totalFinal <- valorDescontado + valorIVA
		
		
		// Acumular total vendido
		totalVendido <- totalVendido + totalFinal
		
		
		// Determinar cliente con mayor compra
		Si primerCliente = Verdadero Entonces
			mayorCompra <- totalFinal
			clienteMayorCompra <- nombreCliente
			primerCliente <- Falso
		SiNo
			Si totalFinal > mayorCompra Entonces
				mayorCompra <- totalFinal
				clienteMayorCompra <- nombreCliente
			FinSi
		FinSi
		
		
		// Mostrar resumen del cliente
		Escribir ""
		Escribir "======================================"
		Escribir "       RESUMEN DE LA COMPRA"
		Escribir "======================================"
		Escribir "Cliente: ", nombreCliente
		Escribir "Subtotal: $", subtotalCompra
		Escribir "Descuento: $", valorDescuento
		Escribir "Valor IVA: $", valorIVA
		Escribir "Total final a pagar: $", totalFinal
		
	FinPara
	
	
	// Calcular promedio
	Si clientes > 0 Entonces
		promedioCompra <- totalVendido / clientes
	SiNo
		promedioCompra <- 0
	FinSi
	
	
	// Mostrar resumen del día
	Escribir ""
	Escribir "======================================"
	Escribir "          RESUMEN DEL DIA"
	Escribir "======================================"
	Escribir "Clientes atendidos: ", clientes
	Escribir "Valor total vendido: $", totalVendido
	Escribir "Promedio de compra por cliente: $", promedioCompra
	Escribir "Cliente con mayor compra: ", clienteMayorCompra
	Escribir "Mayor valor de compra: $", mayorCompra

	
FinAlgoritmo
