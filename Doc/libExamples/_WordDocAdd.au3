﻿; *******************************************************
; 示例 1 - 创建一个空的Word窗口，并添加一个新的空白文档
; *******************************************************
#include <Word.au3>
$oWordApp = _WordCreate ("")
$oDoc = _WordDocAdd ($oWordApp)