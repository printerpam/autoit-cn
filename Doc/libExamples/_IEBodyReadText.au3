﻿; *******************************************************
; Example 1 - Open a browser with the basic example, read the body Text
;				(the content with all HTML tags removed) and display it in a MsgBox
; *******************************************************
;
#include <IE.au3>
$oIE = _IE_Example ("basic")
$sText = _IEBodyReadText ($oIE)
MsgBox(0, "Body Text", $sText)