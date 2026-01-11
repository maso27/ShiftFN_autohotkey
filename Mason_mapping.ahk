#Requires AutoHotkey v2.0
#SingleInstance Force

; Remap CapsLock to Shift
CapsLock::Shift

; --- SpaceFN-style modifier ---
; Tap = space, Hold = modifier layer

$Space::
{
	; if released within 150ms, send space
	if KeyWait('Space', 'T0.15')
		Send(' ')
	; Else don't send space and only do the simultaneous-presses
	else
		return

}

; Directional modifier combos:
Space & j::Send "{Left}"
Space & k::Send "{Down}"
Space & i::Send "{Up}"
Space & l::Send "{Right}"

; Additional combos:
Space & n::Send "{Home}"
Space & m::Send "{End}"
Space & y::Send "{PgUp}"
Space & h::Send "{PgDn}"
Space & u::Send "^{Left}"    ; skip to previous word
Space & o::Send "^{Right}"   ; skip to next word
Space & g::SetCapsLockState(!GetKeyState("CapsLock", "T"))


; Deletion combos:
Space & p::Send "^{Backspace}" ; delete previous word
Space & `;::Send "{Backspace}"  ; closer backspace