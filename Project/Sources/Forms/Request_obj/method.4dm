
If (Form event code:C388=On Printing Detail:K2:18)
	Form:C1466.lastname:=Uppercase:C13(Form:C1466.lastname)
	Form:C1466.firstname:=Uppercase:C13(Substring:C12(Form:C1466.firstname; 1; 1))+Lowercase:C14(Substring:C12(Form:C1466.firstname; 2))
	Form:C1466.request:=Lowercase:C14(Form:C1466.request)
End if 
