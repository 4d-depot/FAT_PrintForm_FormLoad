var $o : Object

Case of 
		
	: (Form event code:C388=On Load:K2:1)
		
		For each ($o; Form:C1466.LBcollection)
			$o.reference:=Uppercase:C13($o.reference)
		End for each 
		
End case 