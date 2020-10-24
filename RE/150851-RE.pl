
#!/usr/bin/perl
#alumno: Sergio Antonio Rodriguez Rodriguez 150851 ITI
#teoria computacional
#Universidad politecnica de San Luis Potosi
#profesor: Juan Carlos Gonzales Ibarra
#descripcion del codigo: RE

my @tokens=();   # for string tokens
my $entrada = 'char sergio = 24;';
my @source_code =  split (' ',$entrada);   # turning source code into list of words
foreach my $word (@source_code)
{
    # This will check if a token has datatype decleration
    if ($word =~ m/str|int|bool/)
    {        
	push (@tokens, "['DATATYPE','$word']");
    }
    # This will look for an identifier which would be just a word
	    elsif($word =~ m/[a-z|A-Z]/)
	    {		       
		push (@tokens, "['IDENTIFIER','$word']");
	    }
	    # This will look for an operator
		    elsif($word =~ m/[\+\-\/\*\=\%]/)
		    {        
			push (@tokens, "['OPERATOR','$word']");
		    }
		    # This will look for integer items and cast them as a number
			    elsif ($word =~ m/[0-9]/)
			    {	
						     	    my @wd2=$word; 

									if(@wd2[length(@wd2)-1] =~ /;/)
									{
									my $intr=substr($word,0,-1);
									push (@tokens, "['INTEGER','$intr']");
									push (@tokens, "['END STATEMENT', ';']");
									}
										else
										{			   
										push (@tokens,"['INTEGER','$word']");
										}	
				}
}
print("[@tokens]");  # Outputs the token array
	sub variablePROLOG{
		my @pal =@_;
		if((@pal[0]=~ m/[A-Z]/ and @pal[0]=~/[A-Z]/) or @pal[0]=="_")
		{
			@pal =shift(@pal);
			while(@pal and (@pal[0]=~ /[A-za-z0-9_]/ or @pal[0]=="_"))
		    {
			@pal =shift(@pal);
			    if(@pal==" ")
				{
				return 1;
				}
			}
		}
	    return 0;
	}