
#alumno: Sergio Antonio Rodriguez Rodriguez 150851 ITI
#teoria computacional
#Universidad politecnica de San Luis Potosi
#profesor: Juan Carlos Gonzalez Ibarra
#descripcion del codigo: COMPUERTAS LOGICAS en perl
use strict;

my @Booleanos=(0,1);     #DECLARO EL CONJUNTO BOOBLEANO
my $x;                    ## declaracion de x y y para uso en los for
my $y;
#------------------------------------------------
print("tabla de verdad de or\n");      # generacion de la tabla de verdad or    


print("x\t y\t x or y\n");


for $x (@Booleanos)            
{
	for $y (@Booleanos)
	{
		print("$x, $y, $x or $y \n");
	}
}

#--------------------------------------------------
print("tabla de verdad de and\n");      # generacion de la tabla de verdad and


print("x\t y\t x and y\n");

for $x (@Booleanos)
{
	for $y (@Booleanos)
	{
		print("$x, $y, $x and $y \n");
	}
}
#--------------------------------------------------
print("tabla de verdad de not\n");    # generacion de la tabla de verdad not

print("$x\t not $x");


for $x (@Booleanos)
{
	print("$x, not $x\n");
}

#------------------------------------------------
print("tabla de verdad de ^\n");      # generacion de la tabla de verdad ^
print("x\t y\t x ^ y\n");


for $x (@Booleanos)
{
	for $y (@Booleanos)
	{
		print("$x, $y, $x ^ $y \n");
	}
}
