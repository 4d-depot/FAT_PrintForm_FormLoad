//%attributes = {}

vlastName:="Smith"
vfirstName:="john"
vrequest:="I need more COFFEE"

$win:=Open form window:C675("Request_var"; Plain form window:K39:10; Horizontally centered:K39:1; Vertically centered:K39:4)
DIALOG:C40("Request_var")

SET PRINT PREVIEW:C364(True:C214)
$h:=Print form:C5("Request_var")
