.globl lectura # hacemos pública la función lectura

.include "servicios.s" #incluimos el fichero servicios

.text # segmento de texto(código)

	# Función que comprueba primero si hay alguna tecla pulsada en una fila del teclado y luego recorre la fila y guarda la tecla pulsada en el registro 
	#temporal t2 
	
	
	# su único parámetro entra por a2 eel cúal es el código de la prxima fila a leer
	
	#por último vuelve a la instrucción inmediantamente posterioir a su llamada
	
	lectura:
	
		sb a2, KEY_ENA(t0)
		lb t2, KEY_RD(t0)
	
		ret