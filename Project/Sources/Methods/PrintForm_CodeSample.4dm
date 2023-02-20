//%attributes = {}
var $colData : Collection
var $formData : Object
var $win; $h : Integer

$colData:=New collection:C1472
$colData.push(New object:C1471("lastname"; "Smith"; "firstname"; "john"; "request"; "I need more COFFEE"; "validated"; True:C214))
$colData.push(New object:C1471("lastname"; "Martin"; "firstname"; "Paul"; "request"; "I need a HAMMER"; "validated"; True:C214))
$colData.push(New object:C1471("lastname"; "Baldwin"; "firstname"; "Mickael"; "request"; "I need a RUBBER"; "validated"; True:C214))


// display dialog for each object in the collection
$win:=Open form window:C675("Request_obj"; Plain form window:K39:10; Horizontally centered:K39:1; Vertically centered:K39:4)
For each ($formData; $colData)
	DIALOG:C40("Request_obj"; $formData)
End for each 
CLOSE WINDOW:C154($win)


SET PRINT PREVIEW:C364(True:C214)
// print form header
$h:=Print form:C5("Print_obj"; $formData; Form header:K43:3)

// *****************************
// Print form for each object in the collection
For each ($formData; $colData)
	If ($formData.validated)
		$h:=Print form:C5("Print_obj"; $formData; Form detail:K43:1)  // $formData: NEW !!!
	End if 
End for each 
// *****************************

// print form footer
$h:=Print form:C5("Print_obj"; $formData; Form footer:K43:2)
