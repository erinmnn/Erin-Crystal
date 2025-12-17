TreeMons::
; entries correspond to TREEMON_SET_* constants
	table_width 2, TreeMons
	dw TreeMonSet_City
	dw TreeMonSet_Canyon
	dw TreeMonSet_Town
	dw TreeMonSet_Route
	dw TreeMonSet_Kanto
	dw TreeMonSet_Lake
	dw TreeMonSet_Forest
;	dw TreeMonSet_Rock
	assert_table_length NUM_TREEMON_SETS
;	dw TreeMonSet_City ; unused

RockSmashMons::
	; broke off from the above table, for nayru's pokedex
	; delineation was needed because there is no 'rare' table for rocksmash
	table_width 2, RockSmashMons
	dw TreeMonSet_Rock
	assert_table_length NUM_ROCKSMASH_SETS

; Two tables each (common, rare).
; Structure:
;	db  %, level, species 

TreeMonSet_City:
; common
	dbbw 50, 10, BUTTERFREE
	dbbw 15, 10, VENONAT
	dbbw 15, 10, HOOTHOOT
	dbbw 10, 10, EXEGGCUTE
	dbbw  5, 10, AIPOM
	dbbw  5, 10, AIPOM
	db -1
; rare
	dbbw 50, 10, BUTTERFREE
	dbbw 15, 10, VENONAT
	dbbw 15, 10, HOOTHOOT
	dbbw 10, 10, EXEGGCUTE
	dbbw  5, 10, AIPOM
	dbbw  5, 10, AIPOM
	db -1

TreeMonSet_Canyon:
; common
	dbbw 50, 10, BUTTERFREE
	dbbw 15, 10, LEDYBA
	dbbw 15, 10, VENONAT
	dbbw 10, 10, AIPOM
	dbbw  5, 10, HERACROSS
	dbbw  5, 10, HERACROSS
	db -1
; rare
	dbbw 50, 10, BUTTERFREE
	dbbw 15, 10, LEDYBA
	dbbw 15, 10, VENONAT
	dbbw 10, 10, AIPOM
	dbbw  5, 10, HERACROSS
	dbbw  5, 10, HERACROSS
	db -1

TreeMonSet_Town:
; common
	dbbw 50, 10, BUTTERFREE
	dbbw 15, 10, LEDYBA
	dbbw 15, 10, LEDYBA
	dbbw 10, 10, HOOTHOOT
	dbbw  5, 10, AIPOM
	dbbw  5, 10, EXEGGCUTE
	db -1
; rare
	dbbw 50, 10, BUTTERFREE
	dbbw 15, 10, LEDYBA
	dbbw 15, 10, LEDYBA
	dbbw 10, 10, HOOTHOOT
	dbbw  5, 10, AIPOM
	dbbw  5, 10, EXEGGCUTE
	db -1

TreeMonSet_Route:
; common
	dbbw 50, 10, BEEDRILL
	dbbw 15, 10, SPINARAK
	dbbw 15, 10, SPINARAK
	dbbw 10, 10, EKANS
	dbbw  5, 10, AIPOM
	dbbw  5, 10, PINECO
	db -1
; rare
	dbbw 50, 10, BEEDRILL
	dbbw 15, 10, SPINARAK
	dbbw 15, 10, SPINARAK
	dbbw 10, 10, EKANS
	dbbw  5, 10, AIPOM
	dbbw  5, 10, PINECO
	db -1

TreeMonSet_Kanto:
; common
	dbbw 50, 10, HOOTHOOT
	dbbw 15, 10, EKANS
	dbbw 15, 10, HOOTHOOT
	dbbw 10, 10, EXEGGCUTE
	dbbw  5, 10, EXEGGCUTE
	dbbw  5, 10, EXEGGCUTE
	db -1
; rare
	dbbw 50, 10, HOOTHOOT
	dbbw 15, 10, PINECO
	dbbw 15, 10, PINECO
	dbbw 10, 10, EXEGGCUTE
	dbbw  5, 10, EXEGGCUTE
	dbbw  5, 10, EXEGGCUTE
	db -1

TreeMonSet_Lake:
; common
	dbbw 50, 10, BEEDRILL
	dbbw 15, 10, SPINARAK
	dbbw 15, 10, EKANS
	dbbw 10, 10, AIPOM
	dbbw  5, 10, HERACROSS
	dbbw  5, 10, HERACROSS
	db -1
; rare
	dbbw 50, 10, BEEDRILL
	dbbw 15, 10, SPINARAK
	dbbw 15, 10, EKANS
	dbbw 10, 10, AIPOM
	dbbw  5, 10, HERACROSS
	dbbw  5, 10, HERACROSS
	db -1

TreeMonSet_Forest:
; common
	dbbw 50, 10, BEEDRILL
	dbbw 15, 10, EKANS
	dbbw 15, 10, SPEAROW
	dbbw 10, 10, PINECO
	dbbw  5, 10, AIPOM
	dbbw  5, 10, AIPOM
	db -1
; rare
	dbbw 50, 10, BEEDRILL
	dbbw 15, 10, EKANS
	dbbw 15, 10, SPEAROW
	dbbw 10, 10, PINECO
	dbbw  5, 10, AIPOM
	dbbw  5, 10, AIPOM
	db -1

; Rock smash sets dont have common/rare tables
; can have as many entries as you want as long as the % adds up to 100
; feel free to add new rock smash sets
TreeMonSet_Rock:
	dbbw 90, 15, SHUCKLE
	dbbw 10, 14, SHUCKLE
	db -1
