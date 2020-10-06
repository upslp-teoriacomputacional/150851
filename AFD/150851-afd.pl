#alumno: Sergio Antonio Rodriguez Rodriguez 150851 ITI
#teoria computacional
#Universidad politecnica de San Luis Potosi
#profesor: Juan Carlos Gonzales Ibarra
#descripcion del codigo: automata finito determinista

#!/use/bin/perl
use strict;
use warnings;


my $simbolo=undef;   # variable must exist in global namespace first
my $fin=undef;   # variable must exist in global namespace first
use objeto;
$character=objeto->new();
#Definimos la funcion caracter 
sub caracter($character)
{
	  $simbolo="";
	  $fin="";
	 my @digito=qw"[0-9]";
	 my @operador=qw"(\+|\-|\*|\/)";

    #comparamos si es digito o operador
	if($simbolo=~ m/^[0-9]*$/)
	{
		$simbolo="digito";
		return 0;
	}else if($simbolo=~ /\+|\-|\*|\//)
		{
			$simbolo="operador";
			return 1;
		}
		
	}else if($character==$fin)
		{
			return 2;
		}
	}
#si no es ni un digito ni un operador entonces es un caracter no validp
	print("error el caracter $character no es valido");
	exit;

}

#definimos al la funcion  encabezado
sub encabezado()
{
  print("""|  Edo. Actual |Caracter |  Simbolo  |Edo. Siguiente |""");
  body();
}
#definimos la funcion contenido donde guarda cada valor despues de encontrarlo en un ciclo
sub contenido($estadosig,$character.$simbolo,$estado)
{
	 print("|     $estadosig      |   $character      | $simbolo$ |     $estado       |");
    body();
}
#solo muestra la linea que se repetira cada vez que la mandemos a llamar
sub body()
{
	print("+--------------+---------+-----------+---------------+");
}
#MAIN
#Este es la tabla de transiciones del automata AFD creado
my @tabla =qw ((1,E,E),(E,2,E),(3,E,E),(E,E,A));
$estado=0;

print ("""+-------------------------------------+|    Ingrese una cadena a evaluar:    |+-------------------------------------+""");

chomp(@cadena);
body();
encabezado();
#ciclo para recorrer la cadena
foreach $character ($cadena)
{
	$estadosig=$estado;
}
#llamamos al metodo para saber si es un caracter valido y el valor retornado se guarda en charcaracter
$charcaracter=$charcaracter($character);
#guardamos en estado el valor obtenido en la tabla segun las cordenadas que recibio anteriormente
$estado=$tabla[$estado][$charcaracter];

#Si el valor obtenido es una E imprimimos cadena no valida
if($estado=="E")
{
  print("|     $estadosig      |  $character    | $simbolo |     $estado       |");
   body();
   print("""|              Cadena No Valida :(                   | +----------------------------------------------------+""");
   exit;
   contenido($estadosig,$character,$simbolo,$estado);

}
#al concluir si el estado no es 3 que es el de aceptacion imprimimos cadena no valida  
if($estado!=3)
{
	 print("""|              Cadena No Valida :(                   |+----------------------------------------------------+""");
}
       

#si el estado es 3 es una cadena de aceptacion
if($estado==3)
{
	 print("|     $estado      |         |Fin Cadena |               |")
    body();
    print("""|                Cadena Valida                       |+----------------------------------------------------+""");
}
   
