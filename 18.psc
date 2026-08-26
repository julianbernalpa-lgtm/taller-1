Algoritmo sin_titulo
	Definir  numero, centenas, decenas, unidades, resto Como Entero
	Escribir "ingrese un numero de tres cifras"
	Leer numero
	centenas <- numero / 100
	resto <- numero MOD 100
	decenas <- resto / 10
	unidades <- resto MOD 10 
	Escribir "centenas",centenas
	Escribir "decenas" ,decenas
	Escribir "unidades",unidades
FinAlgoritmo
