# Teclado-y-display-de-7-segmentos
Teclado y Display de 7 segmentos: Mostrando teclas

-------------Introducción al proyecto-------------

Trabajaremos con el simulador de RARS que incluye un display de 7 segmentos con teclado hexadecimal. El programa deberá representar en el display derecho cualquier número que el usuario tecleé y además el programa deberá terminar al pulsar la tecla "a"

-------------------Ficheros-----------------------------

El proyecto incluye 5 ficheros que se deben ensamblar a la vez para que el programa principal funcione. Los ficheros son:

-Main.s: es el programa principal que necesitará del resto de ficheros para su correcto funcionamiento. Debe ser ejecutado utilizando la herramienta DIGIT LAB SYM dentro del apartado "tools" conectándolo al programa principal que se encargará de representar los números tecleados por el usuario

-displaynum_f: función que muestrá los dígitos en pantalla, se invoca desde el main

-lectura_f: lee las teclas que pulsa el usuario y la almacena en un registro, se invoca desde el main

-exit_f: función que finaliza el programa , se invoca desde el main

-servicios: fichero que contiene el segmento de datos de el resto de ficheros, incluye servicios y los dígitos (en código hexadecimal)

-----------Instrucciones de uso------------------

Para que el programa principal funcione, todos los ficheros deben estar en el mismo directorio. Se debe abrir el simulador RARS y abrir cada uno de los 5 ficheros necesarios para que el programa funcione. En el menú superior se debe acceder al apartado  "settings" y se debe marcar la casilla "assemble all files currently open", luego se debe ensamblar y ejecutar (recomiendo establecer una velocidad de 20 instrucciones/s).
