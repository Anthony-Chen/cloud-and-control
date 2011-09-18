#!/bin/awk -f

{
    if(length <= 3)
	;#print $0
    else if($0 !~ /[\"\.,:;'\?!`]/ )
	;#print $0
    else
    {
	newword = ""
	for(i=1; i<=length; i++)
	    if(substr($0, i, 1) !~ /[\"\.,:;'\?!`]/)
		newword = newword substr($0, i, 1)
	print newword
    }
}
