#alumno: Sergio Antonio Rodriguez Rodriguez 150851 ITI
#teoria computacional
#Universidad politecnica de San Luis Potosi
#profesor: Juan Carlos Gonzales Ibarra
#descripcion del codigo: utilizacion y operaciones con conjuntos en perl


#EN ESTOS PRIMEROS EJERCICIOS DEL CODIGO PROGRAME LOS CONJUNTOS DE LA FORMA TRADICIONAL
#----------------------------------------------------------------------
#DEFINIR 3 CONJUNTOS
my @A=qw(1 2 3 4 5);   #declaracion de los conjuntos
my @B=qw(3 4 5 6 7);
my @C=qw();

#PERTENENCIA
$uno=1;   #variables de apoyo
$diez=10;

 print(is_element_of1EnA($uno,@A));   #impresion de las respuestas que mandam las funciones
 print("\n");
 print(is_element_of10EnA($diez,@A));
 print("\n");
 print("---------------------------------------------\n");

sub is_element_of1EnA{                #funciones donde se determina si un elemento pertenece o no
	my $item = shift;
	return 1 if grep { $item eq $_}@A;

}

sub is_element_of10EnA{
	my $item = shift;
	return 1 if grep { $item eq $_}@A;

}

#--------------------------------------------------------------
#CONVERTR A CONJUNTOS
my @a=qw(1 2 3);             #en esta forma de programacion ya al declararlo ya es un conjunto
my @b=qw(1 2 3 4 5);
my @c=qw(hola mundo);


print("el conjunto A es @a \n");        #aqui solo los imprimo
print("el conjunto B es @b \n");
print("el conjunto C es @c \n");
print("---------------------------------------------\n");


#-------------------------------------------------------------
#UNION
my @A=qw(1 2 3 4 5);      #declaracion de conjuntos
my @B=qw(3 4 5 6 7);


my (%union,@union);             #con el foreach se va recorriendo y uniendo
foreach my $item((@A,@B))
{
	$union{$item}=1;
}
@union=keys %union;

print(@union);         #impresion de la union
 print("\n");
 print("---------------------------------------------\n");

#-------------------------------------------------------------
#INTERSECCION
my @A=qw(1 2 3 4 5);   #declaracion de conjuntos
my @B=qw(3 4 5 6 7);


my @isect;                           
foreach my $item (@A)               #con esta instruccion se obitiene la interseccion
{
	push @isect, $item if grep { $item eq $_ } @B;
}
print(@isect);
print("\n");
 print("---------------------------------------------\n");
#-------------------------------------------------------------
#DIFERENCIA
my @A=qw(1 2 3 4 5);    #declaracion de conjuntos
my @B=qw(3 4 5 6 7);

my @difference;
foreach my $item (@A)         #con esta instruccion de obtiene la diferencia
{
	push @difference, $item unless grep {$item eq $_}@B;
}
print(@difference);
print("\n");
 print("---------------------------------------------\n");
 #-------------------------------------------------------------
#DIFERENCIA SIMETRICA

my @A=qw(1 2 3 4 5);    #declaracion de conjuntos
my @B=qw(3 4 5 6 7);
my @C=qw();
                        #con estas instrucciones de obtiene la diferencia simetrica
print("la diferencia simetrica= ".@A^@B);
print("\n");
print("la diferencia simetrica= ".@B^@A);
print("\n");
print("la diferencia simetrica= ".@A^@C);
print("\n");
print("la diferencia simetrica= ".@B^@C);

print("\n");
print("---------------------------------------------\n");


#=pod
#EN ESTA SEGUNDA PARTE DEL CODIGO UTILICE LAS HERRAMIENTAS SET:: SCALAR YA QUE DE LA ANTERIOR
#FORMA NO ENCONTRE COMO HACERLO
 #-------------------------------------------------------------
 #QUITAR UN ELEMENTO
sub delete(){
	use Set::Scalar;
	$A = Set::Scalar->new;
	$A->insert(1,2,3,4,5);
	$A -> delete(1);        #instruccion delete para quitar cierto elemento
	print($A);
	print("\n");
    print("---------------------------------------------\n");

}

#-------------------------------------------------------------
#QUITAR TODOS LOS ELEMENTOS
sub clear(){
	use Set::Scalar;
	$A = Set::Scalar->new;
	$A->insert(0,1,2,3,4,5);         
	$A -> clear();               #instruccion clear para quitar todos los elementos
	print($A);
	print("\n");
    print("---------------------------------------------\n");

}
#-------------------------------------------------------------
#COPIAR UN CONJUNTO
sub copy(){
  use Set::Scalar;
	$A = Set::Scalar->new;
	$A->insert(1,2,3,4,5);
	$B = $A->copy();            #instruccion copy para copiar un conjunto
	print($A);
	print("\n");
	print($B);
	print("\n");
	print("---------------------------------------------\n");

}
#-------------------------------------------------------------
#agregar un elemento
sub insertar(){
use Set::Scalar;
	$B = Set::Scalar->new;    
	$B->insert(3,4,5,6,7);               #instruccion insert para insertar  conjunto
	$B->insert(987);
	print($B);
    print("\n");
	print("---------------------------------------------\n");

}

#-------------------------------------------------------------
#subconjunto
use Set::Scalar;

	$A = Set::Scalar->new;
	$A->insert(0,1,2,3,4,5,6,7,8,9);

    $B = Set::Scalar->new;
	$B->insert(3,4,5,6,7);

		if($A->is_subset($B))                      
	{
		print("a es un subconjunto de b\n");
	}
	else
	{
		print("a no es un subconjunto de b\n");
	}

	if($B->is_subset($A))
	{
		print("b es un subconjunto de a\n");
	}
	else
	{
		print("b no es un subconjunto de a\n");
	}

 #-------------------------------------------------------------
#superconjunto
use Set::Scalar;

	$A = Set::Scalar->new;
	$A->insert(0,1,2,3,4,5,6,7,8,9);

    $B = Set::Scalar->new;
	$B->insert(3,4,5,6,7);

	if($A->is_superset($B))
	{
		print("a es un superconjunto de b\n");
	}
	else
	{
		print("A no es un superconjunto de b\n");
	}

	if($B->is_superset($A))
	{
		print("b es un superconjunto de a\n");
	}
	else
	{
		print("b no es superconjunto de a\n");
	}