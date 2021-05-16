XferSave::
	di
	ld [MBC3RomBank], a
; lmao, who's playing this on DMG/SGB?
	ld a, 4
	ldh [rSVBK], a
	ld de, $d000
	ld bc, (sBox - sOptions) + (sLuckyIDNumber + 2 - sMysteryGiftItem)
	call CopyBytes
	ld a, BANK(_ResetClock)
	ld [MBC3RomBank], a
	ret
