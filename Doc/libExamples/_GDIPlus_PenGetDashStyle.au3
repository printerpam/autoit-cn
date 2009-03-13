#include <GuiConstantsEx.au3>
#include <GDIPlus.au3>

Opt('MustDeclareVars', 1)

_Main()

Func _Main()
	Local $hGUI, $hWnd, $hGraphic, $hPen

	; Create GUI
	$hGUI = GUICreate("GDI+", 400, 300)
	$hWnd = WinGetHandle("GDI+")
	GUISetState()

	; Create resources
	_GDIPlus_Startup ()
	$hGraphic = _GDIPlus_GraphicsCreateFromHWND ($hWnd)
	$hPen = _GDIPlus_PenCreate (0xFF000000, 8)
	_GDIPlus_PenSetDashStyle ($hPen, $GDIP_DASHSTYLEDASHDOT)

	; Show pen dash style
	MsgBox(4096, "Information", "Pen dash style: " & _GDIPlus_PenGetDashStyle ($hPen))

	; Draw line
	_GDIPlus_GraphicsDrawLine ($hGraphic, 10, 150, 390, 150, $hPen)

	; Loop until user exits
	Do
	Until GUIGetMsg() = $GUI_EVENT_CLOSE

	; Clean up resources
	_GDIPlus_PenDispose ($hPen)
	_GDIPlus_GraphicsDispose ($hGraphic)
	_GDIPlus_ShutDown ()

EndFunc   ;==>_Main