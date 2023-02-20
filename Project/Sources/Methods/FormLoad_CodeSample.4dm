//%attributes = {}
var $formData : Object
var $over : Boolean
var $full : Boolean

SET PRINT PREVIEW:C364(True:C214)

OPEN PRINTING JOB:C995

$formData:=New object:C1471

$formData.LBcollection:=New collection:C1472()
$formData.LBcollection.push(New object:C1471("reference"; "alpha"; "quantity"; 3; "total"; 120.99))
$formData.LBcollection.push(New object:C1471("reference"; "bravo"; "quantity"; 2; "total"; 599.99))
$formData.LBcollection.push(New object:C1471("reference"; "charlie"; "quantity"; 4; "total"; 79.99))
$formData.LBcollection.push(New object:C1471("reference"; "delta"; "quantity"; 3; "total"; 120.99))
$formData.LBcollection.push(New object:C1471("reference"; "echo"; "quantity"; 2; "total"; 599.99))
$formData.LBcollection.push(New object:C1471("reference"; "foxtrot"; "quantity"; 4; "total"; 79.99))
$formData.LBcollection.push(New object:C1471("reference"; "golf"; "quantity"; 3; "total"; 120.99))
$formData.LBcollection.push(New object:C1471("reference"; "hotel"; "quantity"; 2; "total"; 599.99))
$formData.LBcollection.push(New object:C1471("reference"; "india"; "quantity"; 4; "total"; 79.99))


FORM LOAD:C1103("GlobalForm"; $formData)  // $formData NEW !!!

$over:=False:C215

Repeat 
	$full:=Print object:C1095(*; "InfoTitle")
	$full:=Print object:C1095(*; "LB")  // the datasource of this "LB" listbox is Form.LBcollection
	$full:=Print object:C1095(*; "InfoText")
	
	LISTBOX GET PRINT INFORMATION:C1110(*; "LB"; lk printing is over:K53:14; $over)
	If (Not:C34($over))
		PAGE BREAK:C6
	End if 
Until ($over)
CLOSE PRINTING JOB:C996

