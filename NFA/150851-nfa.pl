#!/usr/bin/perl
#alumno: Sergio Antonio Rodriguez Rodriguez 150851 ITI
#teoria computacional
#Universidad politecnica de San Luis Potosi
#profesor: Juan Carlos Gonzales Ibarra
#descripcion del codigo: nfa
use vars qw($simbolo);		
use vars qw($fin);
use strict;                     
use warnings;
use feature "say";        		
$simbolo = undef;			
$fin = undef;	
#Definimos la funcion caracter 
sub caracter {
	my ($character) = @_;		
	$simbolo = "";			
	$fin = "";
	
	if ($_[0] eq "a") {	
		
		return 0;
	} 
	else 
	{
		
		if ($_[0] eq "b") 
		{
			return 2;
		}
		else

		   {
			if ($_[0] eq "\n") {
				return 1;
			}
		}
		
		say ( "El caracter $_[0] no es valido\n" );
		exit ();
		
	}	
}

#definimos al la funcion  encabezado
sub encabezado
 {
	say ("|  Edo. Actual   |Caracter   |  Simbolo    |Edo. Siguiente   |");
	&body;
}

#definimos la funcion contenido donde guarda cada valor despues de encontrarlo en un ciclo
sub contenido 
{
	say( "|     $_[0]          |    $_[1]\t      |      $_[2]     |       $_[3]\t  |\n");
    &body;
}
#solo muestra la linea que se repetira cada vez que la mandemos a llamar
sub body 
{
	say ("+-----------------+-----------+-------------+------------------+");
}

#MAIN
#Este es la tabla de transiciones del automata AFD creado



say ("+-------------------------------------------+"); say ("|    Ingrese una cadena a evaluar:         |"); say ("+-------------------------------------------+");
	
my $aux = 0;
my $estadosig = 0;

my $charcaracter= undef;
my $cadena = <STDIN>;	
# tabla hecha con el apoyo de Benjamin Loredo y david espinoza
my $tabla =  [[0,4,1],[2,3,4],[2,3,4]];	
my $estado = 0;


&body;
&encabezado;
#ciclo para recorrer la cadena
my $character = "";

#ciclo para recorrer la cadena
foreach $character (split //, $cadena) {
    #print "$char\n";
    $aux += 1;
   $charcaracter = &caracter($character);
    $estado=$tabla->[$estado][$charcaracter];
    $estadosig = $estado+1;

    if ($charcaracter == 0)
    {
        $simbolo = " a";

                if ($estado ==1)
                {
                    $estadosig = 1;
                }   
    }

    if($charcaracter==1)
        {
            $simbolo = " b";
        } 

        if($charcaracter==2)
        {
            $simbolo = "Fin";
        }
    
    if ($estado==4)
    {

        print "|     $estadosig        |    $character\t | ERROR  |\t     $estado\t     |\n";
        &body;
        say "|              Cadena no valida :(                   |";   say ("+---------------------------------------------------------+");
        exit();
    }
    
    if (($estado==3) && ($aux==length($cadena)))
    {
        print "|     $estado        |     \t | Fin cadena|\t\t     |\n";
        &body;
        say "|              Cadena  valida :)                   |";   say ("+---------------------------------------------------------+");
        exit();
    }
    if ($estado==3)
    {
        $estado=2;
    }

    &contenido($estado,$character,$simbolo,$estadosig);       
}
