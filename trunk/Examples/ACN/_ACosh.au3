#Include <Math.au3>
#include <GuiConstantsEx.au3>
#include <GDIPlus.au3>

Opt('MustDeclareVars', 1)

_Main()

Func _Main()
  Local $hGUI, $hWnd, $hGraphic, $hBrush, $tLayout1, $tLayout2, $hFormat, $hFamily, $hFont, $tLayout, $hPen
  Local $aPoint[302][2], $j = 1

  ; ��������
  $hGUI = GUICreate("Inverse Hyperbolic Cosine", 400, 300)
  $hWnd = WinGetHandle("Inverse Hyperbolic Cosine")
  GUISetState()

  ; �����ַ���
  _GDIPlus_Startup()
  $hGraphic = _GDIPlus_GraphicsCreateFromHWND($hWnd)
  $hBrush = _GDIPlus_BrushCreateSolid(0xFF000000)
  $hFormat = _GDIPlus_StringFormatCreate()
  $hFamily = _GDIPlus_FontFamilyCreate("Arial")
  $hFont = _GDIPlus_FontCreate($hFamily, 8, 2)
  $tLayout = _GDIPlus_RectFCreate(200, 150, 50, 20)
  _GDIPlus_GraphicsDrawStringEx($hGraphic, 'O(0,0)', $hFont, $tLayout, $hFormat, $hBrush)
  $tLayout1 = _GDIPlus_RectFCreate(20, 20, 200, 800)
  _GDIPlus_GraphicsDrawStringEx($hGraphic, 'Inverse Hyperbolic Cosine', $hFont, $tLayout1, $hFormat, $hBrush)
  $tLayout2 = _GDIPlus_RectFCreate(245, 150, 20, 20)
  _GDIPlus_GraphicsDrawStringEx($hGraphic, '1', $hFont, $tLayout2, $hFormat, $hBrush)
  $hPen = _GDIPlus_PenCreate()
  _GDIPlus_GraphicsDrawLine($hGraphic, 0, 150, 400, 150, $hPen)
  _GDIPlus_GraphicsDrawLine($hGraphic, 200, 0, 200, 300, $hPen)

  $aPoint[0][0] = 301
  For $i = 1 To 4 Step 0.01
    $aPoint[$j][0] = $i * 50 + 200
    $aPoint[$j][1] = 150 - _ACosh($i) * 50
    $j += 1
  Next
  _GDIPlus_GraphicsDrawCurve($hGraphic, $aPoint)

  ; ѭ�����û��˳�
  Do
  Until GUIGetMsg() = $GUI_EVENT_CLOSE

  ; �����Դ
  _GDIPlus_PenDispose($hPen)
  _GDIPlus_FontDispose($hFont)
  _GDIPlus_FontFamilyDispose($hFamily)
  _GDIPlus_StringFormatDispose($hFormat)
  _GDIPlus_BrushDispose($hBrush)
  _GDIPlus_GraphicsDispose($hGraphic)
  _GDIPlus_Shutdown()

EndFunc   ;==>_Main