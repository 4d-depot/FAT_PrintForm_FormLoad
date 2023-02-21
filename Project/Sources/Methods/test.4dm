//%attributes = {}
$formData:=New object:C1471()
$formData.lastname:="Smith"
$formData.firstname:="john"
$formData.request:="I need more COFFEE"
$h:=Print form:C5("Print_obj"; $formData; Form detail:K43:1)