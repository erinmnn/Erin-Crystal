TreeMons:
; entries correspond to TREEMON_SET_* constants
	table_width 2
	dw TreeMonSet_None
	dw TreeMonSet_Canyon
	dw TreeMonSet_Town
	dw TreeMonSet_Route
	dw TreeMonSet_Kanto
	dw TreeMonSet_Lake
	dw TreeMonSet_Forest
	dw TreeMonSet_Rock
	assert_table_length NUM_TREEMON_SETS
	dw TreeMonSet_None ; unused

; Two tables each (common, rare).
; Structure:
;	db  %, species, level

TreeMonSet_None:
; no encounter data

TreeMonSet_Canyon:
; common
	db 50, 10, BUTTERFREE
	db 15, 10, LEDYBA
	db 15, 10, AIPOM
	db 10, 10, EXEGGCUTE
	db  5, 10, HERACROSS
	db  5, 10, HERACROSS
	db -1
; rare
	db 50, 10, BUTTERFREE
	db 15, 10, LEDYBA
	db 15, 10, AIPOM
	db 10, 10, EXEGGCUTE
	db  5, 10, HERACROSS
	db  5, 10, HERACROSS
	db -1

TreeMonSet_Town:
; common
	db 50, 10, BUTTERFREE
	db 15, 10, LEDYBA
	db 15, 10, LEDYBA
	db 10, 10, VENONAT
	db  5, 10, AIPOM
	db  5, 10, EXEGGCUTE
	db -1
; rare
	db 50, 10, BUTTERFREE
	db 15, 10, LEDYBA
	db 15, 10, LEDYBA
	db 10, 10, VENONAT
	db  5, 10, AIPOM
	db  5, 10, EXEGGCUTE
	db -1

TreeMonSet_Route:
; common
	db 50, 10, BEEDRILL
	db 15, 10, SPINARAK
	db 15, 10, SPINARAK
	db 10, 10, PINECO
	db  5, 10, AIPOM
	db  5, 10, EXEGGCUTE
	db -1
; rare
	db 50, 10, BEEDRILL
	db 15, 10, SPINARAK
	db 15, 10, SPINARAK
	db 10, 10, PINECO
	db  5, 10, AIPOM
	db  5, 10, EXEGGCUTE
	db -1

TreeMonSet_Kanto:
; common
	db 50, HOOTHOOT,   10
	db 15, EKANS,      10
	db 15, HOOTHOOT,   10
	db 10, EXEGGCUTE,  10
	db  5, EXEGGCUTE,  10
	db  5, EXEGGCUTE,  10
	db -1
; rare
	db 50, HOOTHOOT,   10
	db 15, PINECO,     10
	db 15, PINECO,     10
	db 10, EXEGGCUTE,  10
	db  5, EXEGGCUTE,  10
	db  5, EXEGGCUTE,  10
	db -1

TreeMonSet_Lake:
; common
	db 50, 10, BEEDRILL
	db 15, 10, SPINARAK
	db 15, 10, PINECO
	db 10, 10, EXEGGCUTE
	db  5, 10, HERACROSS
	db  5, 10, HERACROSS
	db -1
; rare
	db 50, 10, BEEDRILL
	db 15, 10, SPINARAK
	db 15, 10, PINECO
	db 10, 10, EXEGGCUTE
	db  5, 10, HERACROSS
	db  5, 10, HERACROSS
	db -1

TreeMonSet_Forest:
; common
	db 50, 10, BEEDRILL
	db 15, 10, SPINARAK
	db 15, 10, PINECO
	db 10, 10, AIPOM
	db  5, 10, EXEGGCUTE
	db  5, 10, HERACROSS
	db -1
; rare
	db 50, 10, BEEDRILL
	db 15, 10, SPINARAK
	db 15, 10, PINECO
	db 10, 10, AIPOM
	db  5, 10, EXEGGCUTE
	db  5, 10, HERACROSS
	db -1

TreeMonSet_Rock:
	db 90, SHUCKLE,    15
	db 10, SHUCKLE,    22
	db -1
