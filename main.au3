#include <GuiConstants.au3>

#NoTrayIcon

Opt('GuiOnEventMode', 1)

GUICreate('', 180, 90)
GUISetOnEvent($GUI_EVENT_CLOSE, 'GUIExit')

GUICtrlCreateButton("Deutsch ergänzen", 40, 10, 100, 30)
GUICtrlSetOnEvent(-1, 'addLayout')

GUICtrlCreateButton("Deutsch entfernen", 40, 50, 100, 30)
GUICtrlSetOnEvent(-1, 'removeLayout')

Func addLayout()
   Local $bResult = ShellExecuteWait(@ScriptDir & '\add_german.bat', "", "", "open", @SW_HIDE)
   MsgBox(0, "Deutsch ergänzen", "Fertig!")
EndFunc

Func removeLayout()
   Local $bResult = ShellExecuteWait(@ScriptDir & '\remove_german.bat', "", "", "open", @SW_HIDE)
   MsgBox(0, "Deutsch entfernen", "Fertig!")
EndFunc

GUISetState(@SW_SHOW)

While 1
   Sleep(1000)
WEnd

Func GUIExit()
   Exit
EndFunc
