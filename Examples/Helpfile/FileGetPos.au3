#include <Constants.au3>

Local Const $sFile = "test.txt"
Local $hFile = FileOpen($sFile, 2)

; ����ļ��Ƿ�д��ģʽ
If $hFile = -1 Then
	MsgBox(0, "����", "�޷����ļ�.")
	Exit
EndIf

;д���ı�.
FileWriteLine($hFile, "Line1")
FileWriteLine($hFile, "Line2")
FileWriteLine($hFile, "Line3")

; ������ı��ļ��ڴ滺�������ݵ�����.
FileFlush($hFile)

; ��ȡ��ǰ�ļ���������
MsgBox(0, "", "λ��: " & FileGetPos($hFile) & @CRLF & "����: " & @CRLF & FileRead($hFile))

; ���õ�ǰ�ļ�����.
Local $n = FileSetPos($hFile, 0, $FILE_BEGIN)

;��ȡ��ǰ�ļ���������
MsgBox(0, "", "λ��: " & FileGetPos($hFile) & @CRLF & "����: " & @CRLF & FileRead($hFile))

;�رմ�ǰ�Ѵ򿪵��ļ�.
FileClose($hFile)

;ɾ����ʱ�ļ�.
FileDelete($sFile)