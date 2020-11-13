#!/usr/bin/perl
#alumno: Sergio Antonio Rodriguez Rodriguez 150851 ITI
#teoria computacional
#Universidad politecnica de San Luis Potosi
#profesor: Juan Carlos Gonzales Ibarra
#descripcion del codigo: PDA
use vars qw($simbolo);		
use vars qw($fin);
use strict;                     
use warnings;
use feature "say";        		
$simbolo = undef;			
$fin = undef;	
our @pila=(" ");
#Definimos la funcion caracter 
sub caracter {
	my ($character) = @_;		
	$simbolo = "";			
	$fin = "";
	
	if($_[0] =~/a/)
	{	
		$simbolo = "a";
		$a++;
		return 0;
	}
	else
	{
		if($_[0]=~/b/)
		{
				$simbolo = "b";
				pop @pila;
				$b++;
				return 1;
		}
		else
		{	
				$simbolo = "No valido";
				return 2;
				exit();
		}
	}
}

#definimos al la funcion  encabezado
sub encabezado
 {
	say ("\n|  Edo. Actual	|Caracter| Simbolo 	| Edo. Sig   | ");
	&body;
}

#definimos la funcion contenido donde guarda cada valor despues de encontrarlo en un ciclo
sub contenido 
{
	my ($estadosig, $character, $simbolo, $estado) = @_;
	say ("\n|	",$_[0],"	| ",$_[1],"	 | ",$_[2],"		|  ",$_[3],"	     | ",@pila);
	&body;
}
#solo muestra la linea que se repetira cada vez que la mandemos a llamar
sub body 
{
	say ("\n+---------------+--------+--------------+------------+");
}

#MAIN
#Este es la tabla de transiciones del automata AFD creado
my @tabla= ([0,1,2],[1,2,2],[2,2,2]);	# |  Toma los valores del return
my $estado = 0;

say ("+-------------------------------------------+"); say ("|    Ingrese una cadena a evaluar:         |"); say ("+-------------------------------------------+");
	
my $cadena = <STDIN>;			
chomp $cadena;				
my @cadena = split (//, $cadena);	
&body;
&encabezado;
print("\n|	",$estado,"       |Epsilon |              |  ",$estado,"	     |");
&body;
#ciclo para recorrer la cadena
for my $character (@cadena) 
{
	my $estadosig = $estado;
	push(@pila," x ");
	my $charcaracter = &caracter ( $character );
	$estado = $tabla [$estado][$charcaracter];
	#Si el valor obtenido es una E imprimimos cadena no valida
	if ($estado eq "E") 
	{
		say ("|       ",$estadosig,"      |    ",$character,"    | ",$simbolo,"  |       ",$estado,"       |");
		&body;
		say "|              Cadena no valida :(                   |";   say ("+---------------------------------------------------------+");
		exit ();
	}
	if($charcaracter==1){
		pop @pila;
	}

	&contenido ($estadosig, $character, $simbolo, $estado);
}
    #al concluir si el estado no es 3 que es el de aceptacion imprimimos cadena no valida 
		if ($a != $b) 
		{
		        say "|              Cadena no valida :(                   |"; 
		        &body;
		        say ("+---------------------------------------------------------+");
		}
     #si el estado es 3 es una cadena de aceptacion
	if (($estado==1 or $estado==2 or $estado==0) and $a==$b) 
	{
		say ("|       ",$estado,"      |         | Fin cadena|               |");
		     &body;
		say ("|                Cadena valida                       |"); say ("+---------------------------------------------------------+");
	}