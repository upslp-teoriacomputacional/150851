#alumno: Sergio Antonio Rodriguez Rodriguez 150851 ITI
#teoria computacional
#Universidad politecnica de San Luis Potosi
#profesor: Juan Carlos Gonzales Ibarra
#descripcion del codigo: palindromo con arrays
OBJETIVOS
los objetivos de esta practica de programacion es identificar si la cadena ingresada es un palindromo o no.
usando las herramientas de perl se analizara la cadena que usuario ingrese.

FUNCIONAMIENTO GENERAL
basicamente lo que el codigo hace es primero recibir la cadena que puede o no ser palindromo, lo recibimos
basicamente normal como una variable de la forma "$nombre" y con stdin para recibirlo. despues para poderlo analizar
homogenemamente convertimos todo esto a mayusculas para que al momento del analisis no nos falle ya que si algunas 
estan en mayusculas y minusculas puede que aunque sea palindromo el programa diga que no lo es.
el siguente paso es muy importante ya que con reverse se invierte la cadena, esta cadena la guardamos en otra variable
para poder analizar la original con la inversa.
para el analisis se usa un for con un if dentro, ahi se compara caracter por caracter.
despues con return mandamos el resultado.

problemas al programar
solo tuve uno, yo queria imprimir ahi mismo el resultado en el el ciclo pero me marcaba un error, intente de varia formas
pero ninguna me funciono, lo que tuve que hacer son unas cuantas lineas de codigo mas para poner fuera de la funcion verificacion
un if else para poder imprimir, a estos if else les mando una instruccion booleana, un 1 o 0 y dependiendo de esto
entra al if o al else.
