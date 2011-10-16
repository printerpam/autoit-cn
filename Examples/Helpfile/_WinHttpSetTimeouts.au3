#AutoIt3Wrapper_AU3Check_Parameters=-d -w 1 -w 2 -w 3 -w 4 -w 5 -w 6

#include "WinHttp.au3"

Opt("MustDeclareVars", 1)

; ����Ҫ�ľ��
Global $hOpen = _WinHttpOpen()

; ���ó�ʱ
_WinHttpSetTimeouts($hOpen, 10, 10, 10, 10)

; ��ȡ���Ӿ��
Global $hConnect = _WinHttpConnect($hOpen, "msdn.microsoft.com")
; ָ������:
Global $hRequest = _WinHttpOpenRequest($hConnect, Default, "en-us/library/aa384101(VS.85).aspx")

; ��������
_WinHttpSendRequest($hRequest)

; �ȴ���Ӧ
_WinHttpReceiveResponse($hRequest)

Global $sHeader
; ���������Ч...
If _WinHttpQueryDataAvailable($hRequest) Then
	$sHeader = _WinHttpQueryHeaders($hRequest) ; ...��ȡ����ͷ��
	; ��ʾ��ȡ��ͷ��
	MsgBox(0, "Header", $sHeader)
Else
	; ��ʾ��ȡ��ͷ��
	MsgBox(48, "Failure", "Maybe the new timeouts are unrealistic  ;)")
EndIf

; ����
_WinHttpCloseHandle($hRequest)
_WinHttpCloseHandle($hConnect)
_WinHttpCloseHandle($hOpen)