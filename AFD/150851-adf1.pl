#!/usr/bin/perl
#alumno: Sergio Antonio Rodriguez Rodriguez 150851 ITI
#teoria computacional
#Universidad politecnica de San Luis Potosi
#profesor: Juan Carlos Gonzales Ibarra
#descripcion del codigo: automata finito determinista
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
	 #comparamos si es digito o operador
	if ($character =~ /\d+$/) {	
		$simbolo = " Digito ";
		return 0;
	} 
	else 
	{
		
		if ($character =~ /\+|\-/ or $character eq "*" or $character eq "/") 
		{
			$simbolo = "Operador";
			return 1;
		}
		else

		   {
			if ($character eq $fin) {
				return 2;
			}
		}
		#si no es ni un digito ni un operador entonces es un caracter no validp
		say ( "El caracter $character no es valido\n" );
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
	my ($estadosig, $character, $simbolo, $estado) = @_;
	say ("|       ",$estadosig,"         |    ",$character,"      | ",$simbolo,"   |       ",$estado,"      |");
	&body;
}
#solo muestra la linea que se repetira cada vez que la mandemos a llamar
sub body 
{
	say ("+-----------------+-----------+-------------+------------------+");
}

#MAIN
#Este es la tabla de transiciones del automata AFD creado
my @tabla= ([1,"E","E"],["E",2,"E"],[3,"E","E"],["E","E","A"]);	# |  Toma los valores del return
my $estado = 0;

say ("+-------------------------------------------+"); say ("|    Ingrese una cadena a evaluar:         |"); say ("+-------------------------------------------+");
	
my $cadena = <STDIN>;			
chomp $cadena;				
my @cadena = split (//, $cadena);	
&body;
&encabezado;
#ciclo para recorrer la cadena
for my $character (@cadena) 
{
	my $estadosig = $estado;
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

	&contenido ($estadosig, $character, $simbolo, $estado);
}
    #al concluir si el estado no es 3 que es el de aceptacion imprimimos cadena no valida 
		if ($estado !=3) 
		{
		        say "|              Cadena no valida :(                   |"; say ("+---------------------------------------------------------+");
		}
     #si el estado es 3 es una cadena de aceptacion
	if ($estado ==3) 
	{
		say ("|       ",$estado,"      |         | Fin cadena|               |");
		     &body;
		say ("|                Cadena valida                       |"); say ("+---------------------------------------------------------+");
	}