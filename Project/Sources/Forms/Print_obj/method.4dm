
If (Form event code:C388=On Printing Detail:K2:18)
	Form:C1466.lastname:=Uppercase:C13(Form:C1466.lastname)
	//Form.firstname:=Uppercase(Substring(Form.firstname; 1; 1))+Lowercase(Substring(Form.firstname; 2))
	//Form.request:=Lowercase(Form.request)
End if 
