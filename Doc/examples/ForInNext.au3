;ʹ��һ������
Dim $aArray[4]

$aArray[0]="a"
$aArray[1]=0
$aArray[2]=1.3434
$aArray[3]="����"

$string = ""
FOR $element IN $aArray
	$string = $string & $element & @CRLF
NEXT

Msgbox(0,"For..IN �������","���: " & @CRLF & $string)

;ʹ��һ�����󼯺�

$oShell = ObjCreate("shell.application")
$oShellWindows=$oShell.windows

if Isobj($oShellWindows) then
  $string=""

  for $Window in $oShellWindows
	$String = $String & $Window.LocationName & @CRLF
  next

  msgbox(0,"","���������д���:" & @CRLF & $String)
else

  msgbox(0,"","��û�д���Ǵ���.")
endif