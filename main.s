#Programa que lee las teclas de un teclado de 16 teclas hexadecimales (integrado en Digit Lab Sim) y las muestra en el display derecho. 
#Al pulsar una tecla concreta este termina
#Debe tener dos funciones 
#todas las funciones deben estar en ficheros separados, con los nombres que consideres oportunos
#al menos debe leer una fila de teclado.


	.include "servicios.s" # invocamos al fichero servicios que incluye tanto servicios como los códigos de los números
	.text #segmento de texto, comienzo del código

	
	li t0, BASE	#cargamos en t1 la dirección base de la cual nos apoyaremos más adelante
	
#---------------------PROGRAMA PRINCIPAL MAIN------------------------------
# bucle que recorre todas las filas de una en una buscando una tecla pulsada
bucle:		
	# se carga en las direcciones temporales los códigos de los números de la primera fila en el teclado hexadecimal y la tecla de salida a
	li t1,68
	li t3,17
	li t4,33
	li t5,65
	li t6,-127
	 
	# se carga en el resgistro a2 la dirección de la fila (01) y se llama a la función lectura (la cual leerá
	# la primera fila del teclado en busca de una tecla pulsada)
	li a2, 01	
	jal lectura
	
	
	# en caso de que la tecla pulsada (almacenada en t2) coincida con uno de los digitos de la fila leída entonces salta a la función
	#intermedia para cada número que representa ese mismo número por el display derecho
	beq t2, t3,DISP_0
	beq t2, t4,DISP_1
	beq t2, t5,DISP_2
	beq t2, t6,DISP_3
	beq t2, t1 ,EXIT_P
	# se carga en las direcciones temporales los códigos de los números de la segunda fila en el teclado hexadecimal
	li t1,68
	li t3,18
	li t4,34
	li t5,66
	li t6,-126
	
	# se carga en el resgistro a2 la dirección de la fila (02) y se llama a la función lectura (la cual leerá
	# la segunda fila del teclado en busca de una tecla pulsada)
	
	li a2, 02
	jal lectura
	
	# en caso de que la tecla pulsada (almacenada en t2) coincida con uno de los digitos de la fila leída entonces salta a la función
	#intermedia para cada número que representa ese mismo número por el display derecho

	beq t2, t3,DISP_4
	beq t2, t4,DISP_5
	beq t2, t5,DISP_6
	beq t2, t6,DISP_7
	beq t2, t1 ,EXIT_P
	# se carga en las direcciones temporales los códigos de los números de la segunda fila en el teclado hexadecimal y la tecla de salida a (68)
	
	li t1,68
	li t3,20
	li t4,36
	
	
	# se carga en el resgistro a2 la dirección de la fila (04) y se llama a la función lectura (la cual leerá
	# la segunda fila del teclado en busca de una tecla pulsada)
	
	li a2, 04
	jal lectura
	
	# en caso de que la tecla pulsada (almacenada en t2) coincida con uno de los digitos de la fila leída entonces salta a la función
	#intermedia para cada número que representa ese mismo número por el display derecho o a la funcion de salida
	
	beq t2, t3,DISP_8
	beq t2, t4,DISP_9
	beq t2, t1 ,EXIT_P
	
	
	
	b bucle # fin del bucle y vuelta al inicio
	
# Funcion intermedia del display del 0 a la que se llama cuando la tecla 0 ha sido pulsada, guarda en a3 el código en hexadecimal 
# del 0 que pasará como parámetro a la funcion displaynum. 
# Una vez se ejecuta la función del display vuelve al bucle

DISP_0:
	li a3, DIG_0
	jal displaynum
	beq a3,a3,bucle

# Funcion intermedia del display del 1 a la que se llama cuando la tecla 2 ha sido pulsada, guarda en a3 el código en hexadecimal
#  del 1 que pasará como parámetro a la funcion displaynum. 
# Una vez se ejecuta la función del display vuelve al bucle	

DISP_1:
	li a3, DIG_1
	jal displaynum
	beq a3,a3,bucle

# Funcion intermedia del display del 2 a la que se llama cuando la tecla 2 ha sido pulsada, guarda en a3 el código en hexadecimal 
# del 2 que pasará como parámetro a la funcion displaynum. 
# Una vez se ejecuta la función del display vuelve al bucle
	
DISP_2:
	li a3, DIG_2
	jal displaynum
	beq a3,a3,bucle
	
# Funcion intermedia del display del 3 a la que se llama cuando la tecla 3 ha sido pulsada, guarda en a3 el código en hexadecimal
#  del 3 que pasará como parámetro a la funcion displaynum. 
# Una vez se ejecuta la función del display vuelve al bucle

DISP_3:
	li a3, DIG_3
	jal displaynum
	beq a3,a3,bucle

# Funcion intermedia del display del 4 a la que se llama cuando la tecla 4 ha sido pulsada, guarda en a3 el código en hexadecimal  
#del 4 que pasará como parámetro a la funcion displaynum. 
# Una vez se ejecuta la función del display vuelve al bucle
	
DISP_4:
	li a3, DIG_4
	jal displaynum
	beq a3,a3,bucle

# Funcion intermedia del display del 5 a la que se llama cuando la tecla 5 ha sido pulsada, guarda en a3 el código en hexadecimal 
# del 5 que pasará como parámetro a la funcion displaynum. 
# Una vez se ejecuta la función del display vuelve al bucle
	
DISP_5:
	li a3, DIG_5
	jal displaynum
	beq a3,a3,bucle

# Funcion intermedia del display del 6 a la que se llama cuando la tecla 6 ha sido pulsada, guarda en a3 el código en hexadecimal  
#del 6 que pasará como parámetro a la funcion displaynum. 
# Una vez se ejecuta la función del display vuelve al bucle
	
DISP_6:
	li a3, DIG_6
	jal displaynum
	beq a3,a3,bucle

# Funcion intermedia del display del 7 a la que se llama cuando la tecla 7 ha sido pulsada, guarda en a3 el código en hexadecimal 
# del 7 que pasará como parámetro a la funcion displaynum. 
# Una vez se ejecuta la función del display vuelve al bucle

DISP_7:
	li a3, DIG_7
	jal displaynum
	beq a3,a3,bucle

# Funcion intermedia del display del 8 a la que se llama cuando la tecla 8 ha sido pulsada, guarda en a3 el código en hexadecimal  
#del 8 que pasará como parámetro a la funcion displaynum. 
# Una vez se ejecuta la función del display vuelve al bucle

DISP_8:
	li a3, DIG_8
	jal displaynum
	beq a3,a3,bucle

# Funcion intermedia del display del 9 a la que se llama cuando la tecla 9 ha sido pulsada, guarda en a3 el código en hexadecimal  
#del 9 que pasará como parámetro a la funcion displaynum. 
# Una vez se ejecuta la función del display vuelve al bucle

DISP_9:
	li a3, DIG_9
	jal displaynum
	beq a3,a3,bucle

	
# Funcion intermedia que llama a la función exit la cual finaliza el programa

EXIT_P:
	jal exit


	
	
		

		
		
