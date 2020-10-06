Instrucciones
Programar en el lenguaje de programación asignado (F #, Perl, Rust)
Los programas se encuentran en la carpeta (source_code).
El código debe estar compilado en cualquier sistema operativo.
El código se carga en https://github.com/upslp-teoriacomputacional/matricula
Ejemplo. 00180864_sets. Vamos
El programa se evaluará de acuerdo con la rúbrica adjunta.
La evidencia del programa desarrollado es la plantilla del código fuente comentado.
También puede mostrar el funcionamiento de los programas al inicio o término de clase antes de la fecha límite.
Rúbrica
Funcionalidad:
El programa funciona correctamente y todas las variables de entrada están validadas.

Razonamiento lógico:
Es un código compacto muy refinado.

Estructuración de código:
Si usa sangría, espacios y espaciado entre líneas eso le da mayor claridad.

Documentación:
La presentación incluye el nombre, apellido, especialidad, nombre del profesor de la especialidad, nombre de la institución y matrícula, objetivos bien definidos documentados y partes del código bien documentado.
Ayuda -?
Comentarios de documentación sobre lenguajes de programación.
escribir comentarios F # .
escribir comentarios en Perl .
escribiendo comentarios de Rust .
Escribir código claro
El objetivo general al escribir código es facilitar su lectura y comprensión. Los programas bien escritos son más fáciles de depurar, más fáciles de mantener y tienen menos errores. Escribir un programa es muy parecido a escribir un ensayo. Al escribir un ensayo, su mensaje es más convincente cuando va acompañado de la gramática y la puntuación adecuadas. Al escribir programas de computadora, debe seguir el mismo principio. Es incluso más importante cuando se programa, ya que se puede asignar a alguien para mantener y respaldar su código durante largos períodos de tiempo. ¡Apreciará la importancia del buen estilo cuando sea su tarea comprender y mantener el código de otra persona!

Comentando
Ejemplo

/ * ------------------------------------------------ ---------
 * Aquí hay un comentario de bloque que llama la atención.
 * a sí mismo.
 * ------------------------------------------------- -------- * /
/ * ********************************************* *****************************
 * Nombre: Alan Turing
 * NetID: aturing
 * Precepto: P00
 *
 * Descripción: Imprime 'Hello, World' en la ventana de terminal.
 * Por tradición, este es el primer programa de todos.
 * El profesor Brian Kernighan inició esta tradición en 1974.
 *
 * Escrito: 5/03/1997
 * Última actualización: 22/8/2018
 *
 *% python 3 HelloWorld.python
 *% pyton HelloWorld
 * Hola Mundo
 *
 ************************************************ ************************** * /
Comente cada nombre de variable importante (incluidas todas las variables de instancia).
doble rx privado, ry; // posición
privado doble q; // cargar
Si lo prefiere, puede utilizar los comentarios de documentos .

public static void main (String [] args) { 
   anidamiento booleano = verdadero;
   / * / * * / anidamiento = falso; // * /
   System.out.println (anidamiento);
} 
a * x + b
para (int i = 0; i <n; i ++) frente a para (int i = 0; i <n; i ++)
    // Este comentario no tiene espacio // Este comentario tiene dos 
    // después del delimitador y es // espacios después del delimitador
    //dificultad para leer. // y es más fácil de leer.
int n = Integer.parseInt (args [0]); // tamaño de la población
int ensayos = Integer.parseInt (args [1]); // número de intentos
// Sangría de estilo K&R                   
public static void main (String [] args) {
    System.out.println ("Hola, mundo");
}
// Sangría de estilo BSD-Allman
public static void main (String [] args)
{
System.out.println ("Hola, mundo");
}

Referencias
R. La práctica de la programación de Brian W. Kernighan y Rob Pike es un clásico.

A. Estilo de verificación . Si siguió nuestras instrucciones de Windows, Mac OS X o Linux, IntelliJ está configurado para ejecutar Checkstyle automáticamente mientras está editando.

A. código inmantenible y aquí hay otro .

No tenga miedo de la recolección de correo electrónico, escriba su correo electrónico correctamente y la página realizará la ofuscación de programación.
@