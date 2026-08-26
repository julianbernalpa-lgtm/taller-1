Algoritmo sin_titulo
	Definir  capital, tasa, tiempo, interes, montofinal Como Real
	Escribir "ingrese el capital"
	Leer capital
	Escribir "ingrese la tasa de interes"
	Leer tasa
	Escribir "ingrese el numero de años"
	Leer tiempo
	interes<- capital * tasa * tiempo / 100 
	montofinal<- capital + interes 
	Escribir "el interes es",interes
	Escribir "el monto final es", montofinal
FinAlgoritmo
