Algoritmo sin_titulo
	Escribir "Bienvenido :) "
	Escribir "ingrese siquieres determinar si a operar  numero"
	Leer opera
	si (opera = 1)
		Leer num1
		Leer num2
		Mostrar num1+num2
		Escribir "si desea operar con tres digitos primero digite el numero 2 para que sea de tres digitos"
		Leer cantidad
		si (cantidad = 2 )
			Leer num1
			Leer num2
			Leer num3
			Mostrar num1+num2+num3
			
		FinSi
	FinSi

	Escribir "si desea que sea restar la operacion por favor digite el numero 3 para que sea una resta"
	Leer opera
	si(opera = 3)
		Leer num1
		Leer num2
		Mostrar num1-num2
		Escribir "si tambien desea con tres digitos por favor ingrese en numero 4 para que se pueda usar de a tres digitos"
		Leer cantidad
		si(cantidad = 4 ) Entonces
			Leer num1
			Leer num2
			Leer num3
			Mostrar num1-num2-num3
			
		FinSi
	FinSi
FinAlgoritmo
