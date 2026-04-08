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
	db 50, BUTTERFREE, 	10
	db 15, LEDYBA,		10
	db 15, AIPOM,		10
	db 10, EXEGGCUTE,	10
	db  5, HERACROSS,	10
	db  5, HERACROSS,	10
	db -1
; rare
	db 50, BUTTERFREE, 	10
	db 15, LEDYBA,		10
	db 15, AIPOM,		10
	db 10, EXEGGCUTE,	10
	db  5, HERACROSS,	10
	db  5, HERACROSS,	10
	db -1

TreeMonSet_Town:
; common
	db 50, BUTTERFREE, 	10
	db 15, LEDYBA,		10
	db 15, LEDYBA,		10
	db 10, VENONAT,		10
	db  5, AIPOM,		10
	db  5, EXEGGCUTE,	10
	db -1
; rare
	db 50, BUTTERFREE, 	10
	db 15, LEDYBA,		10
	db 15, LEDYBA,		10
	db 10, VENONAT,		10
	db  5, AIPOM,		10
	db  5, EXEGGCUTE,	10
	db -1

TreeMonSet_Route:
; common
	db 50, BEEDRILL,   10
	db 15, SPINARAK,   10
	db 15, SPINARAK,   10
	db 10, PINECO, 	   10
	db  5, AIPOM,	   10
	db  5, EXEGGCUTE,  10
	db -1
; rare
	db 50, BEEDRILL,   10
	db 15, SPINARAK,   10
	db 15, SPINARAK,   10
	db 10, PINECO, 	   10
	db  5, AIPOM,	   10
	db  5, EXEGGCUTE,  10
	db -1

TreeMonSet_Kanto:
; common
	db 50, BUTTERFREE, 10
	db 15, AIPOM,      10
	db 15, PINECO,     10
	db 10, EXEGGCUTE,  10
	db  5, HERACROSS,  10
	db  5, HERACROSS,  10
	db -1
; rare
	db 50, BUTTERFREE, 10
	db 15, AIPOM,      10
	db 15, PINECO,     10
	db 10, EXEGGCUTE,  10
	db  5, HERACROSS,  10
	db  5, HERACROSS,  10
	db -1

TreeMonSet_Lake:
; common
	db 50, BEEDRILL,  10
	db 15, SPINARAK,  10
	db 15, PINECO,    10
	db 10, EXEGGCUTE, 10
	db  5, HERACROSS, 10
	db  5, HERACROSS, 10
	db -1
; rare
	db 50, BEEDRILL,  10
	db 15, SPINARAK,  10
	db 15, PINECO,    10
	db 10, EXEGGCUTE, 10
	db  5, HERACROSS, 10
	db  5, HERACROSS, 10
	db -1

TreeMonSet_Forest:
; common
	db 50, BEEDRILL, 10
	db 15, SPINARAK, 10
	db 15, PINECO,   10
	db 10, AIPOM,    10
	db  5, EXEGGCUTE, 10
	db  5, HERACROSS, 10
	db -1
; rare
	db 50, BEEDRILL, 10
	db 15, SPINARAK, 10
	db 15, PINECO,   10
	db 10, AIPOM,    10
	db  5, EXEGGCUTE, 10
	db  5, HERACROSS, 10
	db -1

TreeMonSet_Rock:
	db 90, SHUCKLE,    15
	db 10, SHUCKLE,    22
	db -1
