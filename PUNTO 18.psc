Algoritmo sin_titulo
	Definir numero1, numero2, cociente, residuo Como Entero
	Escribir "por favor ingrese el primer numero y despues dale a enter para el siguiente paso "
	Leer numero1
	Escribir "ingrese el segundo numero y dale a enter para lo siguien"
	Leer numero2
	cociente <- trunc(numero1 / numero2)
	residuo <- numero1 MOD numero2
	Escribir "el cocinete entero es" , cociente
	Escribir "el residuo es", residuo
FinAlgoritmo
