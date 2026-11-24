#Indicamos a la terminal que este script esta escrito en bash.
#!/bin/bash
#Lo primero que tenemos que hacer es guardar la secuncia que queremos encontrar en una variable. 
secuencia="CTACAGAGAAATC"
#Empezanos en bucle for, y le indicamos que coja todos los archivos que esten en la carpeta que sean .fasta, es decir,, que tengan secuencias de ADN 
for file in *.fasta
#Despues utilizamos en grep -B 1 para que busque la secuencia que ateriormente hemos guardado y ademas la linea anterior en una varible, tambien añadimos un -i para que grep obvie las mayusculas y minusculas y se centren en buscar la secuencia, y le decimos que lo reedirija a un archivo que en este caso es una variable.  
	do grep -i -B 1 $secuencia $file  >> $1
#Para finalizar la estructura del bucle, acabamos poniendo done, para indicar que hemos acabado.
done 
