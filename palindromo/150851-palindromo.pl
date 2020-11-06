#!/bin/usr/perl
#alumno: Sergio Antonio Rodriguez Rodriguez 150851 ITI
#teoria computacional
#Universidad politecnica de San Luis Potosi
#profesor: Juan Carlos Gonzales Ibarra
#descripcion del codigo: palindromo con arrays
use warnings;
use strict;
print "ingresa una cadena para verficar si es o no palindromo\n";
my $array = <STDIN>;
#primeramente para verificar esta cadena se tiene que quitar los espacios y convertir todo a mayusculas para que todo este igual y para podr analizar
#aqui en estas lineas haremos esto
$array =~ tr/a-z/A-Z/;
$array =~ s/\s//g;
my @cadena=split //,$array;
sub verificacion
{	      #funcion para analisis de la cadena
	my @invierte=reverse(@cadena);   # con reverse se invierte la cadena
	my $recorrido=0;	
	for(@cadena)
	{
		if ($cadena[$recorrido] ne $invierte[$recorrido])
		{
		  return 0;
		}
		  $recorrido+=1;
	}
	return 1;
#impresiones
}
if (&verificacion==1)
{
	print "INGRESASTE:\n\n";
	print "$array \n";
	print "esta cadena es un palindromo";
}
else
{
	print "INGRESASTE:\n\n";
	print "$array \n";
	print "esta cadena no es un palindromo";
}
