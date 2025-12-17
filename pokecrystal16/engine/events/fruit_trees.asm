DEF FRUIT_TREE_17_MIN EQU 17
DEF FRUIT_TREE_18     EQU 18
DEF FRUIT_TREE_19     EQU 19
DEF FRUIT_TREE_20     EQU 20
DEF FRUIT_TREE_21_MAX EQU 21

FruitTreeScript::
	callasm GetCurTreeFruit
	opentext
	readmem wCurFruit
	getitemname STRING_BUFFER_3, USE_SCRIPT_VAR
	writetext FruitBearingTreeText
	promptbutton
	callasm TryResetFruitTrees
	callasm CheckFruitTree
	iffalse .fruit
	writetext NothingHereText
	waitbutton
	sjump .end

.fruit
	farwritetext _HeyItsFruitText
	callasm GetFruitTreeCount
	ifequal FRUIT_TREE_17_MIN, .try_seventeen
	ifequal FRUIT_TREE_18, .try_eighteen
	ifequal FRUIT_TREE_19, .try_nineteen
	ifequal FRUIT_TREE_20, .try_twenty
	; only possible value left it could be is FRUIT_TREE_21_MAX
	readmem wCurFruit
	giveitem ITEM_FROM_MEM, $15
	iffalse .packisfull
	promptbutton
	writetext ObtainedFruitText
	sjump .continue
.try_twenty
	readmem wCurFruit
	giveitem ITEM_FROM_MEM, $14
	iffalse .packisfull
	promptbutton
	writetext ObtainedFruitText
	sjump .continue
.try_nineteen
	readmem wCurFruit
	giveitem ITEM_FROM_MEM, $13
	iffalse .packisfull
	promptbutton
	writetext ObtainedFruitText
	sjump .continue
.try_eighteen
	readmem wCurFruit
	giveitem ITEM_FROM_MEM, $12
	iffalse .packisfull
	promptbutton
	writetext ObtainedFruitText
	sjump .continue
.try_seventeen
	readmem wCurFruit
	giveitem ITEM_FROM_MEM, $11
	iffalse .packisfull
	promptbutton
	writetext ObtainedFruitText
.continue
	callasm PickedFruitTree
	specialsound
	itemnotify
	sjump .end

.packisfull
	promptbutton
	writetext FruitPackIsFullText
	waitbutton

.end
	closetext
	end

GetFruitTreeCount:
	ld a, 5
	call RandomRange
	add 17
	ld [wScriptVar], a
	ret

GetCurTreeFruit:
	ld a, [wCurFruitTree]
	dec a
	call GetFruitTreeItem
	ld [wCurFruit], a
	ret

TryResetFruitTrees:
	ld hl, wDailyFlags1
	bit DAILYFLAGS1_ALL_FRUIT_TREES_F, [hl]
	ret nz
	jp ResetFruitTrees

CheckFruitTree:
	ld b, 2
	call GetFruitTreeFlag
	ld a, c
	ld [wScriptVar], a
	ret

PickedFruitTree:
	farcall StubbedTrainerRankings_FruitPicked
	ld b, 1
	jp GetFruitTreeFlag

ResetFruitTrees:
	ret

GetFruitTreeFlag:
	push hl
	push de
	ld a, [wCurFruitTree]
	dec a
	ld e, a
	ld d, 0
	ld hl, wFruitTreeFlags
	call FlagAction
	pop de
	pop hl
	ret

GetFruitTreeItem:
	push hl
	push de
	ld e, a
	ld d, 0
	ld hl, FruitTreeItems
	add hl, de
	ld a, [hl]
	pop de
	pop hl
	ret

INCLUDE "data/items/fruit_trees.asm"

FruitBearingTreeText:
	text_far _FruitBearingTreeText
	text_end

HeyItsFruitText:
	text_far _HeyItsFruitText
	text_end

ObtainedFruitText:
	text_far _ObtainedFruitText
	text_end

FruitPackIsFullText:
	text_far _FruitPackIsFullText
	text_end

NothingHereText:
	text_far _NothingHereText
	text_end
