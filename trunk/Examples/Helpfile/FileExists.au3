If FileExists("C:\autoexec.bat") Then
	MsgBox(4096, "C:\autoexec.bat �ļ�", "����")
Else
	MsgBox(4096,"C:\autoexec.bat �ļ�", "������")
EndIf

If FileExists("C:\") Then
	MsgBox(4096, "C:\ Ŀ¼ ", "����")
Else
	MsgBox(4096,"C:\ Ŀ¼" , "������")
EndIf

If FileExists("D:") Then
	MsgBox(4096, "������ D: ", "����")
Else
	MsgBox(4096,"������ D: ", "������")
EndIf