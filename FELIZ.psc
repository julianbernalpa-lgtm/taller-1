Algoritmo sin_titulo
	Leer opera
	leer cantidad
	Escribir "cantidad de numeros a operar"
	Operacion <- 0 
	para i <- 1 Hasta cantidad Hacer
		Escribir "Digite un numero"
		Leer numero
		si opera = 1  
			Operacion <- Operacion + numero
		FinSi
		si opera = 2 
			si Operacion = 0
				Operacion <- numero
			SiNo
				Operacion <- Operacion - numero
			FinSi
		FinSi
		si opera = 3  
			si Operacion = 0
				Operacion <- numero
					
			sino
					
				Operacion <- Operacion * numero
			FinSi
		FinSi
		si opera = 4 
			si Operacion = 0
				Operacion <- numero
			SiNo
				Operacion<- Operacion / numero
			FinSi
		FinSi	
	FinPara
	Escribir "La operacion es: ", Operacion
FinAlgoritmo
