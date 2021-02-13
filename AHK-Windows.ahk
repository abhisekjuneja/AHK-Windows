; AHK-Windows.ahk
; AutoHotKey Script for my Work-Flow Automation
; Author: Abhisek Juneja (abhisekjuneja.github.io)


; -------------------------------------------------------------------------------------- ;
; AutoHotKey - Auto-Generated Code - Only Modify if you know what you are doing!
; -------------------------------------------------------------------------------------- ;
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
; -------------------------------------------------------------------------------------- ;


; --------------------- ;
; Open a Firefox Window ;
; --------------------- ;

; Trigger: Ctrl + Alt + F
^!f::

; Routine
Run, firefox.exe

; Termination
return

; --------------------------------;
; Clean the Temporary Files/Cache ;
; --------------------------------;

; Trigger: Ctrl + Alt + D
^!d:: 

; Routine
Run, %A_temp%
WinWait, Temp,, 3
if ErrorLevel {
    MsgBox, WinWait timed out while opening the 'Temp' Directory.
    return
} else {
    Send, ^a
    Send, +{Delete}
    WinWait, Delete Multiple Items,, 3
	if ErrorLevel {
	    MsgBox, WinWait timed out while opening the 'Delete Confirmation' Dialog-Box.
	    return
	}
	else {
		Send, {Enter}
		; [TO-DO]: Need to Handle the Prompt Which needs
		; Permission to Delete System Files
	}
}

; Termination
return