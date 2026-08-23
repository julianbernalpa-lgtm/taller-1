Algoritmo sin_titulo
	Definir  cantidad, billetes50000,billetes20000,billetes10000,restante Como Entero
	Escribir "ingrese la cantidad de dinero"
	Leer cantidad
	billetes50000 <- cantidad / 50000
	restante<- cantidad MOD 50000
	billetes20000<-restante / 20000
	restante <- restante MOD 20000
	billetes10000<- restante / 10000
	restante<- restante MOD 10000
	Escribir "billetes50000",billetes50000
	Escribir "billetes20000",billetes20000
	Escribir "billetes10000",billetes10000
	Escribir "dinero restante $", restante
FinAlgoritmo
