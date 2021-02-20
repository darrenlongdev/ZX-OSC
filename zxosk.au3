#NoTrayIcon
#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Icon=zxicon.ico
#AutoIt3Wrapper_Res_Comment=ZX Spectrum On Screen Keyboard
#AutoIt3Wrapper_Res_Description=On Screen Keyboard paying hommage to the Sinclair ZX Spectrum
#AutoIt3Wrapper_Res_ProductName=ZX-OSK
#AutoIt3Wrapper_Res_ProductVersion=1.0
#AutoIt3Wrapper_Res_CompanyName=DarrenLongDev
#AutoIt3Wrapper_Res_LegalCopyright=Darren Long
#AutoIt3Wrapper_Res_LegalTradeMarks=DarrenLongDev
#AutoIt3Wrapper_Run_AU3Check=n
#AutoIt3Wrapper_Run_Tidy=y
#Tidy_Parameters=/rel /reel
#AutoIt3Wrapper_Tidy_Stop_OnError=n
#AutoIt3Wrapper_Run_Au3Stripper=y
#Au3Stripper_Parameters=/rm
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****

; Declare Constants
Local Const $BtnStyle = 0x2C00
Local Const $blk = 0x52595E
Local Const $wht = 0xffffff
Local Const $red = 0xEC4C38

; Embedded Images
#include <images.au3>
Local Const $pTempImageLogo = @TempDir & "\Logo_" & @AutoItPID & ".bmp"
Local $fTempImageLogo = FileOpen($pTempImageLogo, 2)
FileWrite($fTempImageLogo, Binary($logo))
FileClose($fTempImageLogo)
Local Const $pTempImageRainbow = @TempDir & "\Rainbow_" & @AutoItPID & ".bmp"
Local $fTempImageRainbow = FileOpen($pTempImageRainbow, 2)
FileWrite($fTempImageRainbow, Binary($rainbow))
FileClose($fTempImageRainbow)

; Declare Variables
Local $iMinMax = 0x0
Local $iCaps = 0x0
Local $iSym = 0x0
Local $sText, $sTemp

Opt("TrayMenuMode", 3)
$TrayMenuMinMax = TrayCreateItem("Minimize")
TrayCreateItem("") ; Create a separator line.
$TrayMenuExit = TrayCreateItem("Exit")
TraySetState(1)

$zxGUI = GUICreate("", 541, 221, -1, @DesktopHeight - 300, -1, 0x08000088)
GUISetBkColor(0x303034)
GUICtrlCreatePic($pTempImageLogo, 1, 1, 99, 21)
GUICtrlSetState(-1, 0x80)
GUICtrlCreatePic($pTempImageRainbow, 460, 22, 81, 199)
GUICtrlSetState(-1, 0x80)

GUISetFont(9, 700, 0, "Arial", $zxGUI, 5)

$BtnEnt = GUICtrlCreateButton("ENTER", 488, 120, 35, 28)
GUICtrlSetColor(-1, $wht)
GUICtrlSetBkColor(-1, $blk)
GUICtrlSetFont(-1, 6)
$BtnCaps = GUICtrlCreateButton("CAPS" & @CRLF & "SHIFT", 16, 168, 51, 28, $BtnStyle)
GUICtrlSetColor(-1, $wht)
GUICtrlSetBkColor(-1, $blk)
GUICtrlSetFont(-1, 6)
$BtnSym = GUICtrlCreateButton("SYMB" & @CRLF & "SHIFT", 416, 168, 35, 28, $BtnStyle)
GUICtrlSetColor(-1, $red)
GUICtrlSetBkColor(-1, $blk)
GUICtrlSetFont(-1, 6)
$BtnBrk = GUICtrlCreateButton("BREAK" & @CRLF & "SPACE", 464, 168, 59, 28, $BtnStyle)
GUICtrlSetColor(-1, $wht)
GUICtrlSetBkColor(-1, $blk)
GUICtrlSetFont(-1, 6)

$sect1start = GUICtrlCreateDummy()
$Btn1 = GUICtrlCreateButton("1", 16, 24, 35, 28)
GUICtrlSetColor(-1, $wht)
GUICtrlSetBkColor(-1, $blk)
GUICtrlSetFont(-1, 10)
$Btn2 = GUICtrlCreateButton("2", 64, 24, 35, 28)
GUICtrlSetColor(-1, $wht)
GUICtrlSetBkColor(-1, $blk)
GUICtrlSetFont(-1, 10)
$Btn3 = GUICtrlCreateButton("3", 112, 24, 35, 28)
GUICtrlSetColor(-1, $wht)
GUICtrlSetBkColor(-1, $blk)
GUICtrlSetFont(-1, 10)
$Btn4 = GUICtrlCreateButton("4", 160, 24, 35, 28)
GUICtrlSetColor(-1, $wht)
GUICtrlSetBkColor(-1, $blk)
GUICtrlSetFont(-1, 10)
$Btn5 = GUICtrlCreateButton("5", 208, 24, 35, 28)
GUICtrlSetColor(-1, $wht)
GUICtrlSetBkColor(-1, $blk)
GUICtrlSetFont(-1, 10)
$Btn6 = GUICtrlCreateButton("6", 256, 24, 35, 28)
GUICtrlSetColor(-1, $wht)
GUICtrlSetBkColor(-1, $blk)
GUICtrlSetFont(-1, 10)
$Btn7 = GUICtrlCreateButton("7", 304, 24, 35, 28)
GUICtrlSetColor(-1, $wht)
GUICtrlSetBkColor(-1, $blk)
GUICtrlSetFont(-1, 10)
$Btn8 = GUICtrlCreateButton("8", 352, 24, 35, 28)
GUICtrlSetColor(-1, $wht)
GUICtrlSetBkColor(-1, $blk)
GUICtrlSetFont(-1, 10)
$Btn9 = GUICtrlCreateButton("9", 400, 24, 35, 28)
GUICtrlSetColor(-1, $wht)
GUICtrlSetBkColor(-1, $blk)
GUICtrlSetFont(-1, 10)
$Btn0 = GUICtrlCreateButton("0", 448, 24, 35, 28)
GUICtrlSetColor(-1, $wht)
GUICtrlSetBkColor(-1, $blk)
GUICtrlSetFont(-1, 10)
$BtnQ = GUICtrlCreateButton("Q", 40, 72, 35, 28)
GUICtrlSetColor(-1, $wht)
GUICtrlSetBkColor(-1, $blk)
GUICtrlSetFont(-1, 10)
$BtnW = GUICtrlCreateButton("W", 88, 72, 35, 28)
GUICtrlSetColor(-1, $wht)
GUICtrlSetBkColor(-1, $blk)
GUICtrlSetFont(-1, 10)
$BtnE = GUICtrlCreateButton("E", 136, 72, 35, 28)
GUICtrlSetColor(-1, $wht)
GUICtrlSetBkColor(-1, $blk)
GUICtrlSetFont(-1, 10)
$BtnR = GUICtrlCreateButton("R", 184, 72, 35, 28)
GUICtrlSetColor(-1, $wht)
GUICtrlSetBkColor(-1, $blk)
GUICtrlSetFont(-1, 10)
$BtnT = GUICtrlCreateButton("T", 232, 72, 35, 28)
GUICtrlSetColor(-1, $wht)
GUICtrlSetBkColor(-1, $blk)
GUICtrlSetFont(-1, 10)
$BtnY = GUICtrlCreateButton("Y", 280, 72, 35, 28)
GUICtrlSetColor(-1, $wht)
GUICtrlSetBkColor(-1, $blk)
GUICtrlSetFont(-1, 10)
$BtnU = GUICtrlCreateButton("U", 328, 72, 35, 28)
GUICtrlSetColor(-1, $wht)
GUICtrlSetBkColor(-1, $blk)
GUICtrlSetFont(-1, 10)
$BtnI = GUICtrlCreateButton("I", 376, 72, 35, 28)
GUICtrlSetColor(-1, $wht)
GUICtrlSetBkColor(-1, $blk)
GUICtrlSetFont(-1, 10)
$BtnO = GUICtrlCreateButton("O", 424, 72, 35, 28)
GUICtrlSetColor(-1, $wht)
GUICtrlSetBkColor(-1, $blk)
GUICtrlSetFont(-1, 10)
$BtnP = GUICtrlCreateButton("P", 472, 72, 35, 28)
GUICtrlSetColor(-1, $wht)
GUICtrlSetBkColor(-1, $blk)
GUICtrlSetFont(-1, 10)
$BtnA = GUICtrlCreateButton("A", 56, 120, 35, 28)
GUICtrlSetColor(-1, $wht)
GUICtrlSetBkColor(-1, $blk)
GUICtrlSetFont(-1, 10)
$BtnS = GUICtrlCreateButton("S", 104, 120, 35, 28)
GUICtrlSetColor(-1, $wht)
GUICtrlSetBkColor(-1, $blk)
GUICtrlSetFont(-1, 10)
$BtnD = GUICtrlCreateButton("D", 152, 120, 35, 28)
GUICtrlSetColor(-1, $wht)
GUICtrlSetBkColor(-1, $blk)
GUICtrlSetFont(-1, 10)
$BtnF = GUICtrlCreateButton("F", 200, 120, 35, 28)
GUICtrlSetColor(-1, $wht)
GUICtrlSetBkColor(-1, $blk)
GUICtrlSetFont(-1, 10)
$BtnG = GUICtrlCreateButton("G", 248, 120, 35, 28)
GUICtrlSetColor(-1, $wht)
GUICtrlSetBkColor(-1, $blk)
GUICtrlSetFont(-1, 10)
$BtnH = GUICtrlCreateButton("H", 296, 120, 35, 28)
GUICtrlSetColor(-1, $wht)
GUICtrlSetBkColor(-1, $blk)
GUICtrlSetFont(-1, 10)
$BtnJ = GUICtrlCreateButton("J", 344, 120, 35, 28)
GUICtrlSetColor(-1, $wht)
GUICtrlSetBkColor(-1, $blk)
GUICtrlSetFont(-1, 10)
$BtnK = GUICtrlCreateButton("K", 392, 120, 35, 28)
GUICtrlSetColor(-1, $wht)
GUICtrlSetBkColor(-1, $blk)
GUICtrlSetFont(-1, 10)
$BtnL = GUICtrlCreateButton("L", 440, 120, 35, 28)
GUICtrlSetColor(-1, $wht)
GUICtrlSetBkColor(-1, $blk)
GUICtrlSetFont(-1, 10)
$BtnZ = GUICtrlCreateButton("Z", 80, 168, 35, 28)
GUICtrlSetColor(-1, $wht)
GUICtrlSetBkColor(-1, $blk)
GUICtrlSetFont(-1, 10)
$BtnX = GUICtrlCreateButton("X", 128, 168, 35, 28)
GUICtrlSetColor(-1, $wht)
GUICtrlSetBkColor(-1, $blk)
GUICtrlSetFont(-1, 10)
$BtnC = GUICtrlCreateButton("C", 176, 168, 35, 28)
GUICtrlSetColor(-1, $wht)
GUICtrlSetBkColor(-1, $blk)
GUICtrlSetFont(-1, 10)
$BtnV = GUICtrlCreateButton("V", 224, 168, 35, 28)
GUICtrlSetColor(-1, $wht)
GUICtrlSetBkColor(-1, $blk)
GUICtrlSetFont(-1, 10)
$BtnB = GUICtrlCreateButton("B", 272, 168, 35, 28)
GUICtrlSetColor(-1, $wht)
GUICtrlSetBkColor(-1, $blk)
GUICtrlSetFont(-1, 10)
$BtnN = GUICtrlCreateButton("N", 320, 168, 35, 28)
GUICtrlSetColor(-1, $wht)
GUICtrlSetBkColor(-1, $blk)
GUICtrlSetFont(-1, 10)
$BtnM = GUICtrlCreateButton("M", 368, 168, 35, 28)
GUICtrlSetColor(-1, $wht)
GUICtrlSetBkColor(-1, $blk)
GUICtrlSetFont(-1, 10)
$sect1end = GUICtrlCreateDummy()

GUISetState(@SW_SHOW)

While 1
	$msg = GUIGetMsg()
	Switch $msg
		Case -3
			If FileExists($pTempImageLogo) Then FileDelete($pTempImageLogo)
			If FileExists($pTempImageRainbow) Then FileDelete($pTempImageRainbow)
			Exit
		Case $sect1start To $sect1end
			$sText = ControlGetText($zxGUI, "", $msg)
			If $sText = "!" Then
				Send("{!}")
			ElseIf $sText = "^" Then
				Send("{^}")
			ElseIf $sText = "#" Then
				Send("{#}")
			ElseIf $sText = "&&" Then
				Send("&")
			ElseIf $sText = "↓" Then
				Send("{Down}")
			ElseIf $sText = "←" Then
				Send("{Left}")
			ElseIf $sText = "↑" Then
				Send("{Up}")
			ElseIf $sText = "→" Then
				Send("{Right}")
			ElseIf $sText = "Vol ↑" Then
				Send("{VOLUME_UP}")
			ElseIf $sText = "Vol ↓" Then
				Send("{VOLUME_DOWN}")
			ElseIf $sText = "<<" Then
				Send("{MEDIA_PREV}")
			ElseIf $sText = "Pause" Then
				Send("{MEDIA_PLAY_PAUSE}")
			ElseIf $sText = ">>" Then
				Send("{MEDIA_NEXT}")
			ElseIf $sText = "<X" Then
				Send("{BACKSPACE}")
			ElseIf $sText = "DEL" Then
				Send("{DELETE}")
			ElseIf $sText = "PrtSc" Then
				Send("{PRINTSCREEN}")
			ElseIf $sText = "Run" Then
				$sTemp = FileOpenDialog("Run", @DesktopDir, "All (*.*)", 1)
				If Not @error Then ShellExecute($sTemp)
			ElseIf $sText = "Save" Then
				Send("{CTRLDOWN}S{CTRLUP}")
			ElseIf $sText = "Copy" Then
				Send("{CTRLDOWN}C{CTRLUP}")
			ElseIf $sText = "Cut" Then
				Send("{CTRLDOWN}X{CTRLUP}")
			ElseIf $sText = "Paste" Then
				Send("{CTRLDOWN}V{CTRLUP}")
			ElseIf $sText = "Beep" Then
				Beep(1000, 500)
			ElseIf $iCaps = 0x0 Then
				Send(StringLower($sText))
			Else
				Send($sText)
			EndIf
		Case $BtnEnt
			Send("{ENTER}")
		Case $BtnBrk
			Send("{SPACE}")
		Case $BtnSym
			If $iSym = 0x0 Then
				$iSym = 0x1
				GUICtrlSetBkColor($BtnSym, $red)
				GUICtrlSetColor($BtnSym, $wht)
				BtnKeyAct($Btn1, Chr(0x21))
				BtnKeyAct($Btn2, Chr(0x22))
				BtnKeyAct($Btn3, "£")
				BtnKeyAct($Btn4, "$")
				BtnKeyAct($Btn5, "%")
				BtnKeyAct($Btn6, "^")
				BtnKeyAct($Btn7, "&&")
				BtnKeyAct($Btn8, "*")
				BtnKeyAct($Btn9, Chr(0x28))
				BtnKeyAct($Btn0, Chr(0x29))
				BtnKeyAct($BtnP, "PrtSc")
				BtnKeyAct($BtnS, "Save")
				BtnKeyAct($BtnR, "Run")
				BtnKeyAct($BtnX, "Cut")
				BtnKeyAct($BtnC, "Copy")
				BtnKeyAct($BtnV, "Paste")
				BtnKeyAct($BtnZ, "Beep")
				BtnKeyAct($BtnM, "↓")
				BtnKeyAct($BtnJ, "←")
				BtnKeyAct($BtnI, "↑")
				BtnKeyAct($BtnK, "→")
				BtnKeyAct($BtnD, "\")
				BtnKeyAct($BtnF, "/")
				BtnKeyAct($BtnG, ",")
				BtnKeyAct($BtnH, ".")
				BtnKeyAct($BtnQ, "Vol ↑")
				BtnKeyAct($BtnA, "Vol ↓")
				BtnKeyAct($BtnT, "<<")
				BtnKeyAct($BtnY, "Pause")
				BtnKeyAct($BtnU, ">>")
				BtnKeyAct($BtnB, "<X")
				BtnKeyAct($BtnN, "Del")
				BtnKeyAct($BtnW, "@")
				BtnKeyAct($BtnE, "#")
			Else
				$iSym = 0x0
				GUICtrlSetBkColor($BtnSym, $blk)
				GUICtrlSetColor($BtnSym, $red)
				BtnKeyAct($Btn1, "1")
				BtnKeyAct($Btn2, "2")
				BtnKeyAct($Btn3, "3")
				BtnKeyAct($Btn4, "4")
				BtnKeyAct($Btn5, "5")
				BtnKeyAct($Btn6, "6")
				BtnKeyAct($Btn7, "7")
				BtnKeyAct($Btn8, "8")
				BtnKeyAct($Btn9, "9")
				BtnKeyAct($Btn0, "0")
				BtnKeyAct($BtnP, "P")
				BtnKeyAct($BtnS, "S")
				BtnKeyAct($BtnR, "R")
				BtnKeyAct($BtnX, "X")
				BtnKeyAct($BtnC, "C")
				BtnKeyAct($BtnV, "V")
				BtnKeyAct($BtnZ, "Z")
				BtnKeyAct($BtnM, "M")
				BtnKeyAct($BtnJ, "J")
				BtnKeyAct($BtnI, "I")
				BtnKeyAct($BtnK, "K")
				BtnKeyAct($BtnD, "D")
				BtnKeyAct($BtnF, "F")
				BtnKeyAct($BtnG, "G")
				BtnKeyAct($BtnH, "H")
				BtnKeyAct($BtnQ, "Q")
				BtnKeyAct($BtnA, "A")
				BtnKeyAct($BtnT, "T")
				BtnKeyAct($BtnY, "Y")
				BtnKeyAct($BtnU, "U")
				BtnKeyAct($BtnB, "B")
				BtnKeyAct($BtnN, "N")
				BtnKeyAct($BtnW, "W")
				BtnKeyAct($BtnE, "E")
			EndIf
		Case $BtnCaps
			If $iCaps = 0x0 Then
				$iCaps = 0x1
				GUICtrlSetBkColor($BtnCaps, 0x65AD3F)
			Else
				$iCaps = 0x0
				GUICtrlSetBkColor($BtnCaps, $blk)
			EndIf
	EndSwitch
	Switch TrayGetMsg()
		Case $TrayMenuMinMax
			If $iMinMax = 0x0 Then
				GUISetState(@SW_HIDE)
				TrayItemSetText($TrayMenuMinMax, "Maximize")
				$iMinMax = 0x1
			Else
				GUISetState(@SW_SHOW)
				TrayItemSetText($TrayMenuMinMax, "Minimize")
				$iMinMax = 0x0
			EndIf
		Case $TrayMenuExit
			If FileExists($pTempImageLogo) Then FileDelete($pTempImageLogo)
			If FileExists($pTempImageRainbow) Then FileDelete($pTempImageRainbow)
			Exit
	EndSwitch
WEnd

Func BtnKeyAct($btn, $name)
	; Description : Change the character the button activates, for example: BtnKeyAct($5, "H")
	; Syntax .... : BtnKeyAct($btn, $name) / $btn - The variable containing the button / $name - The new key the button will activate
	GUICtrlSetData($btn, $name)
	If StringLen($name) > 1 Then
		GUICtrlSetFont($btn, 6)
	Else
		GUICtrlSetFont($btn, 10)
	EndIf
EndFunc   ;==>BtnKeyAct

