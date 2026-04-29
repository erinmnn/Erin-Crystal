Special::
; Run script special de.
	ld hl, SpecialsPointers
	add hl, de
	add hl, de
	add hl, de
	ld b, [hl]
	inc hl
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, b
	rst FarCall
	ret

INCLUDE "data/events/special_pointers.asm"

EdgeMon:
	call DisableSpriteUpdates
.select_mon
	farcall SelectTradeOrDayCareMonWithoutReturningToMap
    	jp c, .EdgeExit
    	ld a, [wCurPartySpecies]
    	cp EGG
    	jp z, .Egg
	
	ld a, [wCurPartyMon]
	ld hl, wPartyMon1Species
.find_target_mon
	and a
	jr z, .edge
	ld bc, PARTYMON_STRUCT_LENGTH
	add hl, bc
	dec a
	jr .find_target_mon
	
.edge
	ld a, MON_LEVEL
	call GetPartyParamLocation
	ld a, [hl]
	cp MAX_LEVEL
        jp nc, NoEffectMessage
	push de
	inc a
	ld d, a
	farcall CalcExpAtLevel
	pop de
	ld a, MON_EXP
	call GetPartyParamLocation
	ld bc, 2
	add hl, bc
	ldh a, [hMultiplicand + 2]
	dec a
	ld [hld], a
	cp $ff
	jr nz, .no_more_subtract_1
	ldh a, [hMultiplicand + 1]
	dec a
	ld [hld], a
	cp $ff
	jr nz, .no_more_subtract_2
	ldh a, [hMultiplicand + 0]
	dec a
	ld [hl], a
	jr .EdgeExit
	
.no_more_subtract_1
	ldh a, [hMultiplicand + 1]
	ld [hld], a
.no_more_subtract_2	
	ldh a, [hMultiplicand]
	ld [hl], a
.EdgeExit:
	call ReturnToMapWithSpeechTextbox
	call EnableSpriteUpdates
	ret

.Egg:
	ld de, SFX_BUMP
	call WaitPlaySFX

    	ld hl, .EdgeEgg
	call PrintText
	jp .select_mon

.EdgeEgg:
	text_far _EdgeEgg
	text_end

StatusSelectDone:
	text_far _StatusSelectComplete
	text_end	

PoisonMon:
	call DisableSpriteUpdates
.select_mon
	farcall SelectTradeOrDayCareMonWithoutReturningToMap
    	jp c, .PoisonExit
    	ld a, [wCurPartySpecies]
    	cp EGG
    	jp z, .Egg
	
	ld a, [wCurPartyMon]
	ld hl, wPartyMon1Species
.find_target_mon
	and a
	jr z, .poison
	ld bc, PARTYMON_STRUCT_LENGTH
	add hl, bc
	dec a
	jr .find_target_mon
	
.poison
	ld a, [hl]
	ld [wCurSpecies], a
	call GetBaseData

	ld a, [wBaseType1]
	cp POISON
	jr z, .PoisonImmune
	cp STEEL
	jr z, .PoisonImmune
	ld a, [wBaseType2]
	cp POISON
	jr z, .PoisonImmune
	cp STEEL
	jr z, .PoisonImmune

	ld bc, MON_STATUS
	add hl, bc
	ld a, [hl]
	and a
	jr nz, .CantInflictPsn
	set PSN, [hl]
	ld hl, StatusSelectDone
	call PrintText
	jp .select_mon

.PoisonImmune:
	ld hl, .PoisonImmuneText
	call PrintText
	jp .select_mon

.CantInflictPsn:
	ld hl, CantInflictStatusText
	call PrintText
	jp .select_mon

.Egg:
	ld de, SFX_BUMP
	call WaitPlaySFX

    	ld hl, .PoisonEgg
	call PrintText
	jp .select_mon

.PoisonImmuneText:
	text_far _PoisonImmune
	text_end


.PoisonEgg:
	text_far _PoisonEgg
	text_end

.PoisonExit:
	call ReturnToMapWithSpeechTextbox
	call EnableSpriteUpdates
	ret

BurnMon:
	call DisableSpriteUpdates
.select_mon
	farcall SelectTradeOrDayCareMonWithoutReturningToMap
    	jp c, .BurnExit
    	ld a, [wCurPartySpecies]
    	cp EGG
    	jp z, .Egg
	
	ld a, [wCurPartyMon]
	ld hl, wPartyMon1Species
.find_target_mon
	and a
	jr z, .burn
	ld bc, PARTYMON_STRUCT_LENGTH
	add hl, bc
	dec a
	jr .find_target_mon
	
.burn
	ld a, [hl]
	ld [wCurSpecies], a
	call GetBaseData

	ld a, [wBaseType1]
	cp FIRE
	jr z, .BurnImmune
	ld a, [wBaseType2]
	cp FIRE
	jr z, .BurnImmune

	ld bc, MON_STATUS
	add hl, bc
	ld a, [hl]
	and a
	jr nz, .CantInflictBurn
	set BRN, [hl]
	ld hl, StatusSelectDone
	call PrintText
	jp .select_mon

.BurnImmune:
	ld hl, .BurnImmuneText
	call PrintText
	jp .select_mon

.CantInflictBurn:
	ld hl, CantInflictStatusText
	call PrintText
	jp .select_mon

.Egg:
	ld de, SFX_BUMP
	call WaitPlaySFX

    ld hl, .BurnEgg
	call PrintText
	jp .select_mon

.BurnImmuneText:
	text_far _BurnImmune
	text_end

.BurnEgg:
	text_far _BurnEgg
	text_end

.BurnExit:
	call ReturnToMapWithSpeechTextbox
	call EnableSpriteUpdates
	ret

ParalyzeMon:
	call DisableSpriteUpdates
.select_mon
	farcall SelectTradeOrDayCareMonWithoutReturningToMap
    	jp c, .ParalyzeExit
    	ld a, [wCurPartySpecies]
    	cp EGG
    	jp z, .Egg
	
	ld a, [wCurPartyMon]
	ld hl, wPartyMon1Species
.find_target_mon
	and a
	jr z, .paralyze
	ld bc, PARTYMON_STRUCT_LENGTH
	add hl, bc
	dec a
	jr .find_target_mon
	
.paralyze
	ld bc, MON_STATUS
	add hl, bc
	ld a, [hl]
	and a
	jr nz, .CantInflictPara

	set PAR, [hl]
	ld hl, StatusSelectDone
	call PrintText
	jp .select_mon	

.CantInflictPara:
	ld hl, CantInflictStatusText
	call PrintText
	jp .select_mon

.Egg:
	ld de, SFX_BUMP
	call WaitPlaySFX

    ld hl, .ParalyzeEgg
	call PrintText
	jp .select_mon

.ParalyzeEgg:
	text_far _ParalyzeEgg
	text_end
	
.ParalyzeExit:
	call ReturnToMapWithSpeechTextbox
	call EnableSpriteUpdates
	ret

FreezeMon:
	call DisableSpriteUpdates
.select_mon
	farcall SelectTradeOrDayCareMonWithoutReturningToMap
    	jp c, .FreezeExit
    	ld a, [wCurPartySpecies]
    	cp EGG
    	jp z, .Egg
	
	ld a, [wCurPartyMon]
	ld hl, wPartyMon1Species
.find_target_mon
	and a
	jr z, .freeze
	ld bc, PARTYMON_STRUCT_LENGTH
	add hl, bc
	dec a
	jr .find_target_mon
	
.freeze
	ld a, [hl]
	ld [wCurSpecies], a
	call GetBaseData

	ld a, [wBaseType1]
	cp ICE
	jr z, .FreezeImmune
	ld a, [wBaseType2]
	cp ICE
	jr z, .FreezeImmune

	ld bc, MON_STATUS
	add hl, bc
	ld a, [hl]
	and a
	jr nz, .CantInflictFreeze
	set FRZ, [hl]
	ld hl, StatusSelectDone
	call PrintText
	jp .select_mon

.FreezeImmune:
	ld hl, .FreezeImmuneText
	call PrintText
	jp .select_mon

.CantInflictFreeze:
	ld hl, CantInflictStatusText
	call PrintText
	jp .select_mon

.Egg:
	ld de, SFX_BUMP
	call WaitPlaySFX

    	ld hl, .FreezeEgg
	call PrintText
	jp .select_mon

.FreezeImmuneText:
	text_far _FreezeImmune
	text_end

.FreezeEgg:
	text_far _FreezeEgg
	text_end

.FreezeExit:
	call ReturnToMapWithSpeechTextbox
	call EnableSpriteUpdates
	ret

CantInflictStatusText:
	text_far _CantInflictStatus
	text_end

UnusedDummySpecial:
	ret

SetPlayerPalette:
	ld a, [wScriptVar]
	ld d, a
	farcall _SetPlayerPalette
	ret

GameCornerPrizeMonCheckDex:
	ld a, [wScriptVar]
	dec a
	call CheckCaughtMon
	ret nz
	ld a, [wScriptVar]
	dec a
	call SetSeenAndCaughtMon
	call FadeToMenu
	ld a, [wScriptVar]
	ld [wNamedObjectIndex], a
	farcall NewPokedexEntry
	call ExitAllMenus
	ret

UnusedSetSeenMon:
	ld a, [wScriptVar]
	dec a
	call SetSeenMon
	ret

FindPartyMonAboveLevel:
	ld a, [wScriptVar]
	ld b, a
	farcall _FindPartyMonAboveLevel
	jr z, FoundNone
	jr FoundOne

FindPartyMonAtLeastThatHappy:
	ld a, [wScriptVar]
	ld b, a
	farcall _FindPartyMonAtLeastThatHappy
	jr z, FoundNone
	jr FoundOne

FindPartyMonThatSpecies:
	ld a, [wScriptVar]
	ld b, a
	farcall _FindPartyMonThatSpecies
	jr z, FoundNone
	jr FoundOne

FindPartyMonThatSpeciesYourTrainerID:
	ld a, [wScriptVar]
	ld b, a
	farcall _FindPartyMonThatSpeciesYourTrainerID
	jr z, FoundNone
	jr FoundOne

FoundOne:
	ld a, TRUE
	ld [wScriptVar], a
	ret

FoundNone:
	xor a
	ld [wScriptVar], a
	ret

NameRival:
	ld b, NAME_RIVAL
	ld de, wRivalName
	farcall _NamingScreen
	ld hl, wRivalName
	ld de, .DefaultName
	call InitName
	ret

.DefaultName:
	db "SILVER@"

NameRater:
	farcall _NameRater
	ret

OverworldTownMap:
	call FadeToMenu
	farcall _TownMap
	call ExitAllMenus
	ret

UnownPrinter:
	call FadeToMenu
	farcall _UnownPrinter
	call ExitAllMenus
	ret

DisplayLinkRecord:
	call FadeToMenu
	farcall _DisplayLinkRecord
	call ExitAllMenus
	ret

PlayersHousePC:
	xor a
	ld [wScriptVar], a
	farcall _PlayersHousePC
	ld a, c
	ld [wScriptVar], a
	ret

CheckMysteryGift:
	ld a, BANK(sMysteryGiftItem)
	call OpenSRAM
	ld a, [sMysteryGiftItem]
	and a
	jr z, .no
	inc a

.no
	ld [wScriptVar], a
	call CloseSRAM
	ret

GetMysteryGiftItem:
	ld a, BANK(sMysteryGiftItem)
	call OpenSRAM
	ld a, [sMysteryGiftItem]
	ld [wCurItem], a
	ld a, 1
	ld [wItemQuantityChange], a
	ld hl, wNumItems
	call ReceiveItem
	jr nc, .no_room
	xor a
	ld [sMysteryGiftItem], a
	call CloseSRAM
	ld a, [wCurItem]
	ld [wNamedObjectIndex], a
	call GetItemName
	ld hl, .ReceiveItemText
	call PrintText
	ld a, TRUE
	ld [wScriptVar], a
	ret

.no_room
	call CloseSRAM
	xor a
	ld [wScriptVar], a
	ret

.ReceiveItemText:
	text_far _ReceiveItemText
	text_end

BugContestJudging:
	farcall _BugContestJudging
	ld a, b
	ld [wScriptVar], a
	ret

MapRadio:
	ld a, [wScriptVar]
	ld e, a
	farcall PlayRadio
	ret

UnownPuzzle:
	call FadeToMenu
	farcall _UnownPuzzle
	ld a, [wSolvedUnownPuzzle]
	ld [wScriptVar], a
	call ExitAllMenus
	ret

SlotMachine:
	call CheckCoinsAndCoinCase
	ret c
	ld a, BANK(_SlotMachine)
	ld hl, _SlotMachine
	call StartGameCornerGame
	ret

CardFlip:
	call CheckCoinsAndCoinCase
	ret c
	ld a, BANK(_CardFlip)
	ld hl, _CardFlip
	call StartGameCornerGame
	ret

UnusedMemoryGame:
	call CheckCoinsAndCoinCase
	ret c
	ld a, BANK(_MemoryGame)
	ld hl, _MemoryGame
	call StartGameCornerGame
	ret

StartGameCornerGame:
	call FarQueueScript
	call FadeToMenu
	ld hl, wQueuedScriptBank
	ld a, [hli]
	push af
	ld a, [hli]
	ld h, [hl]
	ld l, a
	pop af
	rst FarCall
	call ExitAllMenus
	ret

CheckCoinsAndCoinCase:
	ld hl, wCoins
	ld a, [hli]
	or [hl]
	jr z, .no_coins
	ld a, COIN_CASE
	ld [wCurItem], a
	ld hl, wNumItems
	call CheckItem
	jr nc, .no_coin_case
	and a
	ret

.no_coins
	ld hl, .NoCoinsText
	jr .print

.no_coin_case
	ld hl, .NoCoinCaseText

.print
	call PrintText
	scf
	ret

.NoCoinsText:
	text_far _NoCoinsText
	text_end

.NoCoinCaseText:
	text_far _NoCoinCaseText
	text_end

ClearBGPalettesBufferScreen:
	call ClearBGPalettes
	call BufferScreen
	ret

ScriptReturnCarry:
	jr c, .carry
	xor a
	ld [wScriptVar], a
	ret
.carry
	ld a, 1
	ld [wScriptVar], a
	ret

UnusedCheckUnusedTwoDayTimer:
	farcall CheckUnusedTwoDayTimer
	ld a, [wUnusedTwoDayTimer]
	ld [wScriptVar], a
	ret

ActivateFishingSwarm:
	ld a, [wScriptVar]
	ld [wFishingSwarmFlag], a
	ret

StoreSwarmMapIndices::
	ld a, c
	and a
	jr nz, .yanma
; swarm dark cave violet entrance
	ld a, d
	ld [wDunsparceMapGroup], a
	ld a, e
	ld [wDunsparceMapNumber], a
	ret

.yanma
	ld a, d
	ld [wYanmaMapGroup], a
	ld a, e
	ld [wYanmaMapNumber], a
	ret

CheckPokerus:
; Check if a monster in your party has Pokerus
	farcall _CheckPokerus
	jp ScriptReturnCarry

ResetLuckyNumberShowFlag:
	farcall RestartLuckyNumberCountdown
	ld hl, wLuckyNumberShowFlag
	res LUCKYNUMBERSHOW_GAME_OVER_F, [hl]
	farcall LoadOrRegenerateLuckyIDNumber
	ret

CheckLuckyNumberShowFlag:
	farcall _CheckLuckyNumberShowFlag
	jp ScriptReturnCarry

SnorlaxAwake:
; Check if the Poké Flute channel is playing, and if the player is standing
; next to Snorlax.

; outputs:
; wScriptVar is 1 if the conditions are met, otherwise 0.

; check background music
	ld a, [wMapMusic]
	cp MUSIC_POKE_FLUTE_CHANNEL
	jr nz, .nope

	ld a, [wXCoord]
	ld b, a
	ld a, [wYCoord]
	ld c, a

	ld hl, .ProximityCoords
.loop
	ld a, [hli]
	cp -1
	jr z, .nope
	cp b
	jr nz, .nextcoord
	ld a, [hli]
	cp c
	jr nz, .loop

	ld a, TRUE
	jr .done

.nextcoord
	inc hl
	jr .loop

.nope
	xor a
.done
	ld [wScriptVar], a
	ret

.ProximityCoords:
	;   x,  y
	db 33,  8 ; left
	db 34, 10 ; below
	db 35, 10 ; below
	db 36,  8 ; right
	db 36,  9 ; right
	db -1

PlayCurMonCry:
	ld a, [wCurPartySpecies]
	jp PlayMonCry

GameboyCheck:
	ldh a, [hCGB]
	and a
	jr nz, .cgb
	ldh a, [hSGB]
	and a
	jr nz, .sgb
; gb
	xor a ; GBCHECK_GB
	jr .done

.sgb
	ld a, GBCHECK_SGB
	jr .done

.cgb
	ld a, GBCHECK_CGB
.done
	ld [wScriptVar], a
	ret

FadeOutMusic:
	ld a, LOW(MUSIC_NONE)
	ld [wMusicFadeID], a
	ld a, HIGH(MUSIC_NONE)
	ld [wMusicFadeID + 1], a
	ld a, $2
	ld [wMusicFade], a
	ret

Diploma:
	call FadeToMenu
	farcall _Diploma
	call ExitAllMenus
	ret

PrintDiploma:
	call FadeToMenu
	farcall _PrintDiploma
	call ExitAllMenus
	ret

TrainerHouse:
	ld a, BANK(sMysteryGiftTrainerHouseFlag)
	call OpenSRAM
	ld a, [sMysteryGiftTrainerHouseFlag]
	ld [wScriptVar], a
	jp CloseSRAM
