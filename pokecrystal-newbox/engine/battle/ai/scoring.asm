AIScoring: ; used only for BANK(AIScoring)

AI_Basic:
; Don't do anything redundant:
;  -Using status-only moves if the player can't be statused
;  -Using moves that fail if they've already been used

	ld hl, wEnemyAIMoveScores - 1
	ld de, wEnemyMonMoves
	ld b, NUM_MOVES + 1
.checkmove
	dec b
	ret z

	inc hl
	ld a, [de]
	and a
	ret z

	inc de
	call AIGetEnemyMove

	ld a, [wEnemyMoveStruct + MOVE_EFFECT]
	ld c, a

; Dismiss moves with special effects if they are
; useless or not a good choice right now.
; For example, healing moves, weather moves, Dream Eater...
	push hl
	push de
	push bc
	farcall AI_Redundant
	pop bc
	pop de
	pop hl
	jr nz, .discourage

; Dismiss status-only moves if the player can't be statused.
	ld a, [wEnemyMoveStruct + MOVE_EFFECT]
	push hl
	push de
	push bc
	ld hl, StatusOnlyEffects
	ld de, 1
	call IsInArray

	pop bc
	pop de
	pop hl
	jr nc, .checkmove

	ld a, [wBattleMonStatus]
	and a
	jr nz, .discourage

; Dismiss status moves if the player has a Substitute.
	ld a, [wPlayerSubStatus4]
	bit SUBSTATUS_SUBSTITUTE, a
	jr nz, .discourage

; Dismiss status moves if the player is Safeguarded.
	ld a, [wPlayerScreens]
	bit SCREENS_SAFEGUARD, a
	jr z, .checkmove

.discourage
	call AIDiscourageMove
	jr .checkmove

INCLUDE "data/battle/ai/status_only_effects.asm"

AI_Setup:
; Use stat-modifying moves on turn 1.

; 50% chance to greatly encourage stat-up moves during the first turn of enemy's Pokemon.
; 50% chance to greatly encourage stat-down moves during the first turn of player's Pokemon.
; Almost 90% chance to greatly discourage stat-modifying moves otherwise.

	ld hl, wEnemyAIMoveScores - 1
	ld de, wEnemyMonMoves
	ld b, NUM_MOVES + 1
.checkmove
	dec b
	ret z

	inc hl
	ld a, [de]
	and a
	ret z

	inc de
	call AIGetEnemyMove

	ld a, [wEnemyMoveStruct + MOVE_EFFECT]

	cp EFFECT_ATTACK_UP
	jr c, .checkmove
	cp EFFECT_EVASION_UP + 1
	jr c, .statup

;	cp EFFECT_ATTACK_DOWN - 1
	jr z, .checkmove
	cp EFFECT_EVASION_DOWN + 1
	jr c, .statdown

	cp EFFECT_ATTACK_UP_2
	jr c, .checkmove
	cp EFFECT_EVASION_UP_2 + 1
	jr c, .statup

;	cp EFFECT_ATTACK_DOWN_2 - 1
	jr z, .checkmove
	cp EFFECT_EVASION_DOWN_2 + 1
	jr c, .statdown

	jr .checkmove

.statup
	ld a, [wEnemyTurnsTaken]
	and a
	jr nz, .discourage

	jr .encourage

.statdown
	ld a, [wPlayerTurnsTaken]
	and a
	jr nz, .discourage

.encourage
	call AI_50_50
	jr c, .checkmove

	dec [hl]
	dec [hl]
	jr .checkmove

.discourage
	call Random
	cp 12 percent
	jr c, .checkmove
	inc [hl]
	inc [hl]
	jr .checkmove


AI_Types:
; Dismiss any move that the player is immune to.
; Encourage super-effective moves.
; Discourage not very effective moves unless
; all damaging moves are of the same type.

	ld hl, wEnemyAIMoveScores - 1
	ld de, wEnemyMonMoves
	ld b, NUM_MOVES + 1
.checkmove
	dec b
	ret z

	inc hl
	ld a, [de]
	and a
	ret z

	inc de
	call AIGetEnemyMove

	push hl
	push bc
	push de
	ld a, 1
	ldh [hBattleTurn], a
	callfar BattleCheckTypeMatchup
	pop de
	pop bc
	pop hl

	ld a, [wTypeMatchup]
	and a
	jr z, .immune
	cp EFFECTIVE
	jr z, .checkmove
	jr c, .noteffective

; effective
	ld a, [wEnemyMoveStruct + MOVE_POWER]
	and a
	jr z, .checkmove
	dec [hl]
	jr .checkmove

.noteffective
; Discourage this move if there are any moves
; that do damage of a different type.
	push hl
	push de
	push bc
	ld a, [wEnemyMoveStruct + MOVE_TYPE]
	ld d, a
	ld hl, wEnemyMonMoves
	ld b, NUM_MOVES + 1
	ld c, 0
.checkmove2
	dec b
	jr z, .movesdone

	ld a, [hli]
	and a
	jr z, .movesdone

	call AIGetEnemyMove
	ld a, [wEnemyMoveStruct + MOVE_TYPE]
	cp d
	jr z, .checkmove2
	ld a, [wEnemyMoveStruct + MOVE_POWER]
	and a
	jr nz, .damaging
	jr .checkmove2

.damaging
	ld c, a
.movesdone
	ld a, c
	pop bc
	pop de
	pop hl
	and a
	jr z, .checkmove
	inc [hl]
	jr .checkmove

.immune
	call AIDiscourageMove
	jr .checkmove


AI_Offensive:
; Greatly discourage non-damaging moves.

	ld hl, wEnemyAIMoveScores - 1
	ld de, wEnemyMonMoves
	ld b, NUM_MOVES + 1
.checkmove
	dec b
	ret z

	inc hl
	ld a, [de]
	and a
	ret z

	inc de
	call AIGetEnemyMove

	ld a, [wEnemyMoveStruct + MOVE_POWER]
	and a
	jr nz, .checkmove

	inc [hl]
	inc [hl]
	jr .checkmove


AI_Smart:
; Context-specific scoring.

	ld hl, wEnemyAIMoveScores
	ld de, wEnemyMonMoves
	ld b, NUM_MOVES + 1
.checkmove
	dec b
	ret z

	ld a, [de]
	inc de
	and a
	ret z

	push de
	push bc
	push hl
	call AIGetEnemyMove

	ld a, [wEnemyMoveStruct + MOVE_EFFECT]
	ld hl, AI_Smart_EffectHandlers
	ld de, 3
	call IsInArray

	inc hl
	jr nc, .nextmove

	ld a, [hli]
	ld e, a
	ld d, [hl]

	pop hl
	push hl

	ld bc, .nextmove
	push bc

	push de
	ret

.nextmove
	pop hl
	pop bc
	pop de
	inc hl
	jr .checkmove

AI_Smart_EffectHandlers:
	dbw EFFECT_SPEED_DOWN_HIT,   AI_Smart_SpeedDownHit
	dbw EFFECT_HYPER_BEAM,	     AI_Smart_HyperBeam
	dbw EFFECT_SKULL_BASH,	     AI_Smart_SkullBash
	dbw EFFECT_RAMPAGE,	     AI_Smart_Rampage
	dbw EFFECT_GUST,             AI_Smart_Gust
	dbw EFFECT_TWISTER,          AI_Smart_Twister
	dbw EFFECT_FLY,              AI_Smart_Fly
	dbw EFFECT_TRAP_TARGET,      AI_Smart_TrapTarget
	dbw EFFECT_ALWAYS_HIT,	     AI_Smart_AlwaysHit
	dbw EFFECT_STOMP,            AI_Smart_Stomp
	dbw EFFECT_SLEEP,            AI_Smart_Sleep
	dbw EFFECT_DISABLE,          AI_Smart_Disable
	dbw EFFECT_COUNTER,          AI_Smart_Counter
	dbw EFFECT_MIRROR_COAT,      AI_Smart_MirrorCoat
	dbw EFFECT_LEECH_SEED,       AI_Smart_LeechSeed
	dbw EFFECT_PARALYZE,         AI_Smart_Paralyze
	dbw EFFECT_SPEED_DOWN_2,       AI_Smart_SpeedDown
	dbw EFFECT_EARTHQUAKE,       AI_Smart_Earthquake
	dbw EFFECT_MAGNITUDE,	     AI_Smart_Magnitude
	dbw EFFECT_TOXIC,            AI_Smart_Toxic
	dbw EFFECT_MIMIC,            AI_Smart_Mimic
	dbw EFFECT_HEAL,             AI_Smart_Heal
	dbw EFFECT_LIGHT_SCREEN,     AI_Smart_LightScreen
	dbw EFFECT_REFLECT,          AI_Smart_Reflect
	dbw EFFECT_RESET_STATS,      AI_Smart_ResetStats
	dbw EFFECT_MIRROR_MOVE,      AI_Smart_MirrorMove
	dbw EFFECT_SELFDESTRUCT,     AI_Smart_Selfdestruct
	dbw EFFECT_CONVERSION2,      AI_Smart_Conversion2
	dbw EFFECT_MEAN_LOOK,        AI_Smart_MeanLook
	dbw EFFECT_SNORE,            AI_Smart_Snore
	dbw EFFECT_SLEEP_TALK,       AI_Smart_SleepTalk
	dbw EFFECT_CURSE,            AI_Smart_Curse
	dbw EFFECT_SPITE,            AI_Smart_Spite
	dbw EFFECT_PROTECT,          AI_Smart_Protect
	dbw EFFECT_BELLY_DRUM,       AI_Smart_BellyDrum
	dbw EFFECT_SPIKES,           AI_Smart_Spikes
	dbw EFFECT_DESTINY_BOND,     AI_Smart_DestinyBond
	dbw EFFECT_PERISH_SONG,      AI_Smart_PerishSong
	dbw EFFECT_SANDSTORM,        AI_Smart_Sandstorm
	dbw EFFECT_RAIN_DANCE,       AI_Smart_RainDance
	dbw EFFECT_SUNNY_DAY,        AI_Smart_SunnyDay
	dbw EFFECT_ENDURE,           AI_Smart_Endure
	dbw EFFECT_HEAL_BELL,        AI_Smart_HealBell
	dbw EFFECT_PAIN_SPLIT,       AI_Smart_PainSplit
	dbw EFFECT_BATON_PASS,       AI_Smart_BatonPass
	dbw EFFECT_ENCORE,           AI_Smart_Encore
	dbw EFFECT_RAPID_SPIN,       AI_Smart_RapidSpin
	dbw EFFECT_PSYCH_UP,         AI_Smart_PsychUp
	dbw EFFECT_FUTURE_SIGHT,     AI_Smart_FutureSight
	db -1 ; end

AI_Smart_SpeedDownHit:
AI_Smart_SpeedUpHit:
; flame wheel, icy wind, bone rush, low kick
; 50% chance to greatly encourage this move if player is faster than the enemy.
	ld a, [wEnemyMoveStruct]
	cp FLAME_WHEEL
	jr z, .guaranteed

	cp BONE_RUSH
	jr z, .guaranteed

	cp LOW_KICK
	jr z, .guaranteed

	cp ICY_WIND
	ret nz
.guaranteed
	call AICompareSpeed
	ret c
	call AI_50_50
	ret c
	dec [hl]
	dec [hl]
	ret

AI_Smart_HyperBeam:
AI_Smart_SkullBash:
	call AICheckEnemyHalfHP
	jr c, .discourage
	ret

.discourage
; greatly discourage this move if the enemy is below 50% HP
	inc [hl]
	inc [hl]
	ret

AI_Smart_Rampage:
; 50% to greatly discourage
	call AI_50_50
	ret c
	inc [hl]
	inc [hl]
	ret

AI_Smart_Gust:
AI_Smart_Twister:
; Greatly encourage this move if the player is flying and the enemy is faster.
	ld a, [wLastPlayerCounterMove]
	cp FLY
	ret nz

	call AICompareSpeed
	ret nc

	dec [hl]
	dec [hl]
	ret

AI_Smart_Fly:
AI_Smart_FutureSight:
; Greatly encourage this move if the player is flying or underground and the enemy is faster.
	ld a, [wLastPlayerCounterMove]
	cp FLY
	ret nz

	cp DIG
	ret nz

	call AICompareSpeed
	ret nc

	dec [hl]
	dec [hl]
	ret

AI_Smart_TrapTarget:
; Bind, Fire Spin, Clamp, Whirlpool

; Ignore this move if the player is already trapped.
	ld a, [wPlayerWrapCount]
	and a
	ret nz

; 80% chance to greatly encourage this move if the enemy has Perish Song, Leech Seed, Toxic, or Curse.
	ld b, EFFECT_PERISH_SONG
	call AIHasMoveEffect
	jr c, .encourage

	ld b, EFFECT_LEECH_SEED
	call AIHasMoveEffect
	jr c, .encourage

	ld b, EFFECT_TOXIC
	call AIHasMoveEffect
	jr c, .encourage

	ld b, EFFECT_CURSE
	call AIHasMoveEffect
	jr c, .encourage

; 50% chance to encourage this move otherwise.
	call AI_50_50
	ret c
	dec [hl]
	ret

.encourage
	call AI_80_20
	ret c
	dec [hl]
	dec [hl]
	ret

AI_Smart_AlwaysHit:
; 80% chance to greatly encourage this move if either...

; enemy's accuracy level has been lowered three or more stages
	ld a, [wEnemyAccLevel]
	cp BASE_STAT_LEVEL - 2
	jr c, .encourage

; or player's evasion level has been raised three or more stages.
	ld a, [wPlayerEvaLevel]
	cp BASE_STAT_LEVEL + 3
	ret c

.encourage
	call AI_80_20
	ret c

	dec [hl]
	dec [hl]
	ret

AI_Smart_Stomp:
; 80% chance to encourage this move if the player has used Minimize.

	ld a, [wPlayerMinimized]
	and a
	ret z

	call AI_80_20
	ret c

	dec [hl]
	ret

AI_Smart_Sleep:
; 50% chance to encourage sleep inducing moves if the enemy has either Dream Eater or Nightmare.

	ld b, EFFECT_DREAM_EATER
	call AIHasMoveEffect
	jr c, .encourage

	ld b, EFFECT_NIGHTMARE
	call AIHasMoveEffect
	ret nc

.encourage
	call AI_50_50
	ret c
	dec [hl]
	ret

AI_Smart_Disable:
AI_Smart_Mimic:
AI_Smart_MirrorMove:
AI_Smart_Conversion2:
AI_Smart_Spite:
AI_Smart_Encore:
; Dismiss if the player didn't use a move last turn and the enemy is faster.
	ld [wLastPlayerCounterMove], a
	and a
	ret nz

	call AICompareSpeed
	ret nc

	ld a, [hl]
	add 10
	ld [hl], a
	ret

AI_Smart_Counter:
; Dismiss if none of the player types are physical.
; Otherwise, 50% chance to discourage.
	ld a, [wBattleMonType1]
	cp PHYSICAL
	jr z, .physical

	ld a, [wBattleMonType2]
	cp PHYSICAL
	jr z, .physical
	
	ld a, [hl]
	add 10
	ld [hl], a
	ret

.physical
	call AI_50_50
	ret c
	inc [hl]
	ret

AI_Smart_MirrorCoat:
; Dismiss if none of the player types are special.
; Otherwise, 50% chance to discourage.
	ld a, [wBattleMonType1]
	cp SPECIAL
	jr z, .special

	ld a, [wBattleMonType2]
	cp SPECIAL
	jr z, .special
	
	ld a, [hl]
	add 10
	ld [hl], a
	ret

.special
	call AI_50_50
	ret c
	inc [hl]
	ret

AI_Smart_LeechSeed:
AI_Smart_Toxic:
; 50% chance to encourage if the player is trapped.
	ld a, [wPlayerSubStatus5]
	bit SUBSTATUS_CANT_RUN, a
	ret z

	call AI_50_50
	ret c
	dec [hl]
	ret

AI_Smart_Paralyze:
; 50% chance to encourage if enemy is slower than the player.
	call AICompareSpeed
	ret c

	call AI_50_50
	ret c

	dec [hl]
	ret

AI_Smart_SpeedDown:
; Dismiss if the enemy is faster than the player
	call AICompareSpeed
	ret nc

	ld a, [hl]
	add 10
	ld [hl], a
	ret

AI_Smart_Earthquake:
AI_Smart_Magnitude:
; Greatly encourage this move if the player is underground and the enemy is faster.
	ld a, [wLastPlayerCounterMove]
	cp DIG
	ret nz

	call AICompareSpeed
	ret nc

	dec [hl]
	dec [hl]
	ret

AI_Smart_Heal:
; Discourage this move if enemy's hp is over 50%.
; 50% chance to encourage this move otherwise.
	call AICheckEnemyHalfHP
	jr c, .discourage

	call AI_50_50
	ret c
	dec [hl]
	ret

.discourage
	inc [hl]
	ret

AI_Smart_LightScreen:
; 50% chance to encourage this move if one of the player's types is special.
	ld a, [wBattleMonType1]
	cp SPECIAL
	jr z, .special

	ld a, [wBattleMonType2]
	cp SPECIAL
	ret nz

.special
	call AI_50_50
	ret c
	dec [hl]
	ret

AI_Smart_Reflect:
; 50% chance to encourage this move if one of the player's types is physical.
	ld a, [wBattleMonType1]
	cp PHYSICAL
	jr z, .physical

	ld a, [wBattleMonType2]
	cp PHYSICAL
	ret nz

.physical
	call AI_50_50
	ret c
	dec [hl]
	ret

AI_Smart_ResetStats:
AI_Smart_PsychUp:
; 80% chance to encourage this move if any of enemy's stat levels is lower or equal to -2.
	push hl
	ld hl, wEnemyAtkLevel
	ld c, NUM_LEVEL_STATS
.enemystatsloop
	dec c
	jr z, .enemystatsdone
	ld a, [hli]
	cp BASE_STAT_LEVEL - 1
	jr c, .encourage
	jr .enemystatsloop

; 80% chance to encourage this move if any of player's stat levels is higher or equal to +2.
.enemystatsdone
	ld hl, wPlayerAtkLevel
	ld c, NUM_LEVEL_STATS
.playerstatsloop
	dec c
	jr z, .discourage
	ld a, [hli]
	cp BASE_STAT_LEVEL + 2
	jr c, .playerstatsloop

.encourage
	pop hl
	call AI_80_20
	ret c
	dec [hl]
	ret

.discourage
	pop hl
	inc [hl]
	ret

AI_Smart_Selfdestruct:
AI_Smart_DestinyBond:
; Selfdestruct, Explosion

; If this is the enemy's last Pokemon...
	push hl
	farcall FindAliveEnemyMons
	pop hl
	jr nc, .notlastmon

; ...dismiss this move unless this is the player's last Pokemon too.
	push hl
	call AICheckLastPlayerMon
	pop hl
	jr nz, .dismiss

.notlastmon
; 80% chance to discourage this move if enemy's HP is full.
	call AICheckEnemyMaxHP
	jr c, .discouragemax

; 50% chance to discourage this move if enemy's HP is over 50%.
	call AICheckEnemyHalfHP
	jr c, .discouragehalf

; 20% chance to encourage this move otherwise.
	call AI_80_20
	ret nc
	dec [hl]
	ret

.discouragehalf
	call AI_50_50
	ret c
	inc [hl]
	ret

.discouragemax
	call AI_80_20
	ret c
	inc [hl]
	ret

.dismiss
	ld a, [hl]
	add 10
	ld [hl], a
	ret

AI_Smart_MeanLook:
; Spider Web, Mean Look

; 80% chance to encourage this move if the enemy has Perish Song, Leech Seed, Toxic, or Curse.
	ld b, EFFECT_PERISH_SONG
	call AIHasMoveEffect
	jr c, .encourage

	ld b, EFFECT_LEECH_SEED
	call AIHasMoveEffect
	jr c, .encourage

	ld b, EFFECT_TOXIC
	call AIHasMoveEffect
	jr c, .encourage

	ld b, EFFECT_CURSE
	call AIHasMoveEffect
	ret nc

.encourage
	call AI_80_20
	ret c
	dec [hl]
	ret

AI_Smart_Snore:
AI_Smart_SleepTalk:
; Greatly encourage this move if enemy is fast asleep.
; Greatly discourage this move otherwise.

	ld a, [wEnemyMonStatus]
	and SLP_MASK
	cp 1
	jr z, .discourage

	dec [hl]
	dec [hl]
	dec [hl]
	ret

.discourage
	inc [hl]
	inc [hl]
	inc [hl]
	ret

AI_Smart_Curse:
; 50% chance to encourage this move if enemy is ghost type...
	ld a, [wEnemyMonType1]
	cp GHOST
	jr z, .ghost
	ld a, [wEnemyMonType2]
	cp GHOST
	ret nz

.ghost
; ...has over 50% hp...
; Dismiss this move if the enemy has less than 50% hp.
	call AICheckEnemyHalfHP
	jr c, .overhalf
	ld a, [hl]
	add 10
	ld [hl], a
	ret
.overhalf
; ...and the player is trapped.
	ld a, [wPlayerSubStatus5]
	bit SUBSTATUS_CANT_RUN, a
	ret z

	call AI_50_50
	ret c
	dec [hl]
	ret

AI_Smart_Protect:
; Discourage this move if the enemy already used Protect.
	ld a, [wEnemyProtectCount]
	and a
	jr nz, .discourage

; Discourage this move if the player is locked on.
	ld a, [wPlayerSubStatus5]
	bit SUBSTATUS_LOCK_ON, a
	jr nz, .discourage

; Encourage this move if the player has charged a two-turn move.
	ld a, [wPlayerSubStatus3]
	bit SUBSTATUS_CHARGED, a
	jr nz, .encourage

; Encourage this move if the player is affected by Perish Song, Toxic, Leech Seed, Curse, or Future Sight
	ld a, [wPlayerSubStatus1]
	bit SUBSTATUS_PERISH, a
	jr nz, .encouragehalf

	ld a, [wPlayerSubStatus5]
	bit SUBSTATUS_TOXIC, a
	jr nz, .encouragehalf

	ld a, [wPlayerSubStatus4]
	bit SUBSTATUS_LEECH_SEED, a
	jr nz, .encouragehalf

	ld a, [wEnemyFutureSightCount]
	jr nz, .encouragehalf

	ld a, [wPlayerSubStatus1]
	bit SUBSTATUS_CURSE, a
	ret z

.encouragehalf
	call AI_80_20
	ret c
	dec [hl]
	ret

.encourage
	call AI_50_50
	ret c

.discourage
	inc [hl]
	ret

AI_Smart_BellyDrum:
; 50% chance to encourage this move if enemy's hp is full.
; Discourage this move otherwise.
	call AICheckEnemyMaxHP
	jr c, .encourage

	inc [hl]
	ret

.encourage
	call AI_50_50
	ret c
	dec [hl]
	ret

AI_Smart_Spikes:
AI_Smart_Sandstorm:
AI_Smart_RainDance:
AI_Smart_SunnyDay:
; 50% chance to encourage this move if enemy's hp is full.
	call AICheckEnemyMaxHP
	ret nc

	call AI_50_50
	ret c
	dec [hl]
	ret

AI_Smart_PerishSong:
; Encourage this move if the player is trapped.
	ld a, [wPlayerSubStatus5]
	bit SUBSTATUS_CANT_RUN, a
	ret z

	call AI_80_20
	ret c
	dec [hl]
	ret

AI_Smart_Endure:
; Discourage this move if the enemy already used Protect.
	ld a, [wEnemyProtectCount]
	and a
	jr nz, .discourage

; Discourage this move if the enemy's HP is full.
	call AICheckEnemyMaxHP
	jr c, .discourage

; If the enemy has Reversal or Flail...
	ld b, EFFECT_REVERSAL
	call AIHasMoveEffect
	ret nc

; ...50% chance to encourage this move.
	call AI_50_50
	ret c

	dec [hl]
	ret

.discourage
	inc [hl]
	ret

AI_Smart_HealBell:
; Dismiss this move if none of the opponent's Pokemon is statused.
; Encourage this move if the enemy is statused.

	push hl
	ld a, [wOTPartyCount]
	ld b, a
	ld c, 0
	ld hl, wOTPartyMon1HP
	ld de, PARTYMON_STRUCT_LENGTH

.loop
	push hl
	ld a, [hli]
	or [hl]
	jr z, .next

	; status
	dec hl
	dec hl
	dec hl
	ld a, [hl]
	or c
	ld c, a

.next
	pop hl
	add hl, de
	dec b
	jr nz, .loop

	pop hl
	ld a, c
	and a
	jr z, .no_status

	ld a, [wEnemyMonStatus]
	and a
	ret z
	dec [hl]
	ret

.no_status
	ld a, [wEnemyMonStatus]
	and a
	ret nz
	jp AIDiscourageMove

AI_Smart_PainSplit:
; Discourage this move if [enemy's current HP * 2 > player's current HP].

	push hl
	ld hl, wEnemyMonHP
	ld b, [hl]
	inc hl
	ld c, [hl]
	sla c
	rl b
	ld hl, wBattleMonHP + 1
	ld a, [hld]
	cp c
	ld a, [hl]
	sbc b
	pop hl
	ret nc
	inc [hl]
	ret

AI_Smart_BatonPass:
	push hl
	farcall FindAliveEnemyMons
	pop hl
	jr nc, .notlastmon
	ld a, [hl]
	add 10
	ld [hl], a
	ret

.notlastmon
	ret

AI_Smart_RapidSpin:
; 50% chance to greatly encourage this move if the enemy is
; trapped (Bind effect), seeded, or scattered with spikes.

	ld a, [wEnemyWrapCount]
	and a
	jr nz, .encourage

	ld a, [wEnemySubStatus4]
	bit SUBSTATUS_LEECH_SEED, a
	jr nz, .encourage

	ld a, [wEnemyScreens]
	bit SCREENS_SPIKES, a
	ret z

.encourage
	call AI_50_50
	ret c

	dec [hl]
	dec [hl]
	ret

AICheckLastPlayerMon:
	ld a, [wPartyCount]
	ld b, a
	ld c, 0
	ld hl, wPartyMon1HP
	ld de, PARTYMON_STRUCT_LENGTH

.loop
	ld a, [wCurBattleMon]
	cp c
	jr z, .skip

	ld a, [hli]
	or [hl]
	ret nz
	dec hl

.skip
	add hl, de
	inc c
	dec b
	jr nz, .loop

	ret

AICompareSpeed:
; Return carry if enemy is faster than player.

	push bc
	ld a, [wEnemyMonSpeed + 1]
	ld b, a
	ld a, [wBattleMonSpeed + 1]
	cp b
	ld a, [wEnemyMonSpeed]
	ld b, a
	ld a, [wBattleMonSpeed]
	sbc b
	pop bc
	ret

AICheckPlayerMaxHP:
	push hl
	push de
	push bc
	ld de, wBattleMonHP
	ld hl, wBattleMonMaxHP
	jr AICheckMaxHP

AICheckEnemyMaxHP:
	push hl
	push de
	push bc
	ld de, wEnemyMonHP
	ld hl, wEnemyMonMaxHP
	; fallthrough

AICheckMaxHP:
; Return carry if hp at de matches max hp at hl.

	ld a, [de]
	inc de
	cp [hl]
	jr nz, .not_max

	inc hl
	ld a, [de]
	cp [hl]
	jr nz, .not_max

	pop bc
	pop de
	pop hl
	scf
	ret

.not_max
	pop bc
	pop de
	pop hl
	and a
	ret

AICheckPlayerHalfHP:
	push hl
	ld hl, wBattleMonHP
	ld b, [hl]
	inc hl
	ld c, [hl]
	sla c
	rl b
	inc hl
	inc hl
	ld a, [hld]
	cp c
	ld a, [hl]
	sbc b
	pop hl
	ret

AICheckEnemyHalfHP:
	push hl
	push de
	push bc
	ld hl, wEnemyMonHP
	ld b, [hl]
	inc hl
	ld c, [hl]
	sla c
	rl b
	inc hl
	inc hl
	ld a, [hld]
	cp c
	ld a, [hl]
	sbc b
	pop bc
	pop de
	pop hl
	ret

AICheckEnemyQuarterHP:
	push hl
	push de
	push bc
	ld hl, wEnemyMonHP
	ld b, [hl]
	inc hl
	ld c, [hl]
	sla c
	rl b
	sla c
	rl b
	inc hl
	inc hl
	ld a, [hld]
	cp c
	ld a, [hl]
	sbc b
	pop bc
	pop de
	pop hl
	ret

AICheckPlayerQuarterHP:
	push hl
	ld hl, wBattleMonHP
	ld b, [hl]
	inc hl
	ld c, [hl]
	sla c
	rl b
	sla c
	rl b
	inc hl
	inc hl
	ld a, [hld]
	cp c
	ld a, [hl]
	sbc b
	pop hl
	ret

AIHasMoveEffect:
; Return carry if the enemy has move b.

	push hl
	ld hl, wEnemyMonMoves
	ld c, NUM_MOVES

.checkmove
	ld a, [hli]
	and a
	jr z, .no

	call AIGetEnemyMove

	ld a, [wEnemyMoveStruct + MOVE_EFFECT]
	cp b
	jr z, .yes

	dec c
	jr nz, .checkmove

.no
	pop hl
	and a
	ret

.yes
	pop hl
	scf
	ret

AIHasMoveInArray:
; Return carry if the enemy has a move in array hl.

	push hl
	push de
	push bc

.next
	ld a, [hli]
	cp -1
	jr z, .done

	ld b, a
	ld c, NUM_MOVES + 1
	ld de, wEnemyMonMoves

.check
	dec c
	jr z, .next

	ld a, [de]
	inc de
	cp b
	jr nz, .check

	scf

.done
	pop bc
	pop de
	pop hl
	ret

INCLUDE "data/battle/ai/useful_moves.asm"

AI_Opportunist:
; Discourage stall moves when the enemy's HP is low.

; Do nothing if enemy's HP is above 50%.
	call AICheckEnemyHalfHP
	ret c

; Discourage stall moves if enemy's HP is below 25%.
	call AICheckEnemyQuarterHP
	jr nc, .lowhp

; 50% chance to discourage stall moves if enemy's HP is between 25% and 50%.
	call AI_50_50
	ret c

.lowhp
	ld hl, wEnemyAIMoveScores - 1
	ld de, wEnemyMonMoves
	ld c, NUM_MOVES + 1
.checkmove
	inc hl
	dec c
	jr z, .done

	ld a, [de]
	inc de
	and a
	jr z, .done

	push hl
	push de
	push bc
	ld hl, StallMoves
	ld de, 1
	call IsInArray

	pop bc
	pop de
	pop hl
	jr nc, .checkmove

	inc [hl]
	jr .checkmove

.done
	ret

INCLUDE "data/battle/ai/stall_moves.asm"


AI_Aggressive:
; Use whatever does the most damage.

; Discourage all damaging moves but the one that does the most damage.
; If no damaging move deals damage to the player (immune),
; no move will be discouraged

; Figure out which attack does the most damage and put it in c.
	ld hl, wEnemyMonMoves
	ld bc, 0
	ld de, 0
.checkmove
	inc b
	ld a, b
	cp NUM_MOVES + 1
	jr z, .gotstrongestmove

	ld a, [hli]
	and a
	jr z, .gotstrongestmove

; Don't calculate Selfdestruct or Explosion
	cp SELFDESTRUCT
	jr z, .checkmove

	cp EXPLOSION
	jr z, .checkmove

	push hl
	push de
	push bc
	call AIGetEnemyMove
	ld a, [wEnemyMoveStruct + MOVE_POWER]
	and a
	jr z, .nodamage
	call AIDamageCalc
	pop bc
	pop de
	pop hl

; Update current move if damage is highest so far
	ld a, [wCurDamage + 1]
	cp e
	ld a, [wCurDamage]
	sbc d
	jr c, .checkmove

	ld a, [wCurDamage + 1]
	ld e, a
	ld a, [wCurDamage]
	ld d, a
	ld c, b
	jr .checkmove

.nodamage
	pop bc
	pop de
	pop hl
	jr .checkmove

.gotstrongestmove
; Nothing we can do if no attacks did damage.
	ld a, c
	and a
	jr z, .done

; Discourage moves that do less damage unless they're reckless too.
	ld hl, wEnemyAIMoveScores - 1
	ld de, wEnemyMonMoves
	ld b, 0
.checkmove2
	inc b
	ld a, b
	cp NUM_MOVES + 1
	jr z, .done

; Ignore this move if it is the highest damaging one.
	cp c
	ld a, [de]
	inc de
	inc hl
	jr z, .checkmove2

	call AIGetEnemyMove

; Ignore this move if its power is 0.
	ld a, [wEnemyMoveStruct + MOVE_POWER]
	and a
	jr z, .checkmove2

; Ignore this move if it's Counter or Mirror Coat.
	ld a, [wEnemyMoveStruct + MOVE_EFFECT]
	cp EFFECT_COUNTER
	jr z, .checkmove2

	cp EFFECT_MIRROR_COAT
	jr z, .checkmove2

; Ignore this move if it is reckless (Selfdestruct, Explosion).
	cp EFFECT_SELFDESTRUCT
	jr z, .checkmove2

; If we made it this far, discourage this move.
	inc [hl]
	jr .checkmove2

.done
	ret

INCLUDE "data/battle/ai/reckless_moves.asm"

AIDamageCalc:
	ld a, 1
	ldh [hBattleTurn], a
	ld a, [wEnemyMoveStruct + MOVE_EFFECT]	
	cp EFFECT_MAGNITUDE
	jr z, .magnitude
	cp EFFECT_HIDDEN_POWER
	jr z, .hiddenpower

	ld de, 1
	ld hl, ConstantDamageEffects
	call IsInArray
	jr nc, .regularcalc
	callfar BattleCommand_ConstantDamage
	ret

.hiddenpower
	callfar HiddenPowerDamage
.magnitude
	ld a, 70
	ld [wEnemyMoveStruct + MOVE_POWER], a
.regularcalc
	callfar EnemyAttackDamage
	callfar BattleCommand_DamageCalc
	callfar BattleCommand_Stab
	callfar BattleCommand_DamageVariation

	ld a, [wEnemyMoveStruct + MOVE_EFFECT]

	cp EFFECT_MULTI_HIT
	jr z, .multihit
	cp EFFECT_DOUBLE_HIT
	jr z, .doublehit
	cp EFFECT_POISON_MULTI_HIT
	jr z, .doublehit
	ret

.multihit
	ld hl, wCurDamage + 1
	ld a, [hld]
	ld h, [hl]
	ld l, a

; Multiply damage by 4.
	add hl, hl
	add hl, hl
	jr .done
.doublehit
	ld hl, wCurDamage + 1
	ld a, [hld]
	ld h, [hl]
	ld l, a

; Multiply damage by 2.
	add hl, hl
.done
	ld a, h
	ld [wCurDamage], a
	ld a, l
	ld [wCurDamage + 1], a
	ret

INCLUDE "data/battle/ai/constant_damage_effects.asm"

AI_Cautious:
; 90% chance to discourage moves with residual effects after the first turn.

	ld a, [wEnemyTurnsTaken]
	and a
	ret z

	ld hl, wEnemyAIMoveScores - 1
	ld de, wEnemyMonMoves
	ld c, NUM_MOVES + 1
.loop
	inc hl
	dec c
	ret z

	ld a, [de]
	inc de
	and a
	ret z

	push hl
	push de
	push bc
	ld hl, ResidualMoves
	ld de, 1
	call IsInArray

	pop bc
	pop de
	pop hl
	jr nc, .loop

; BUG: "Cautious" AI may fail to discourage residual moves (see docs/bugs_and_glitches.md)
	call Random
	cp 90 percent + 1
	ret nc

	inc [hl]
	jr .loop

INCLUDE "data/battle/ai/residual_moves.asm"


AI_Status:
; Dismiss status moves that don't affect the player.

	ld hl, wEnemyAIMoveScores - 1
	ld de, wEnemyMonMoves
	ld b, NUM_MOVES + 1
.checkmove
	dec b
	ret z

	inc hl
	ld a, [de]
	and a
	ret z

	inc de
	call AIGetEnemyMove

	ld a, [wEnemyMoveStruct + MOVE_EFFECT]
	cp EFFECT_TOXIC
	jr z, .poisonimmunity
	cp EFFECT_POISON
	jr z, .poisonimmunity
	cp EFFECT_SLEEP
	jr z, .typeimmunity
	cp EFFECT_PARALYZE
	jr z, .typeimmunity

	ld a, [wEnemyMoveStruct + MOVE_POWER]
	and a
	jr z, .checkmove

	jr .typeimmunity

.poisonimmunity
	ld a, [wBattleMonType1]
	cp POISON
	jr z, .immune
	ld a, [wBattleMonType2]
	cp POISON
	jr z, .immune
	jr .typeimmunity

.burnimmunity
	ld a, [wBattleMonType1]
	cp FIRE
	jr z, .immune
	ld a, [wBattleMonType2]
	cp FIRE
	jr z, .immune

.typeimmunity
	push hl
	push bc
	push de
	ld a, 1
	ldh [hBattleTurn], a
	callfar BattleCheckTypeMatchup
	pop de
	pop bc
	pop hl

	ld a, [wTypeMatchup]
	and a
	jr nz, .checkmove

.immune
	call AIDiscourageMove
	jr .checkmove


AI_Risky:
; Use any move that will KO the target.
; Risky moves will often be an exception (see below).

	ld hl, wEnemyAIMoveScores - 1
	ld de, wEnemyMonMoves
	ld c, NUM_MOVES + 1
.checkmove
	inc hl
	dec c
	ret z

	ld a, [de]
	inc de
	and a
	ret z

	push de
	push bc
	push hl
	call AIGetEnemyMove

	ld a, [wEnemyMoveStruct + MOVE_POWER]
	and a
	jr z, .nextmove

; Don't calculate risky moves.
	ld a, [wEnemyMoveStruct + MOVE_EFFECT]
	cp EFFECT_SELFDESTRUCT
	jr z, .nextmove

.checkko
	call AIDamageCalc

	ld a, [wCurDamage + 1]
	ld e, a
	ld a, [wCurDamage]
	ld d, a
	ld a, [wBattleMonHP + 1]
	cp e
	ld a, [wBattleMonHP]
	sbc d
	jr nc, .nextmove

	pop hl

	ld [hl], 5
	ld a, [wEnemyMoveStruct + MOVE_EFFECT]
	cp EFFECT_PRIORITY_HIT
	jr z, .prioko

	cp EFFECT_PURSUIT
	jr z, .prioko

	ld a, [wEnemyMoveStruct + MOVE_ACC]
	cp 99 percent + 1
	jr c, .accurateko
	jr .inaccurateko
.prioko
	dec [hl]
.accurateko
	dec [hl]
.inaccurateko
	push hl

.nextmove
	pop hl
	pop bc
	pop de
	jr .checkmove

INCLUDE "data/battle/ai/risky_effects.asm"


AI_None:
	ret

AIDiscourageMove:
	ld a, [hl]
	add 10
	ld [hl], a
	ret

AIGetEnemyMove:
; Load attributes of move a into ram

	push hl
	push de
	push bc
	dec a
	ld hl, Moves
	ld bc, MOVE_LENGTH
	call AddNTimes

	ld de, wEnemyMoveStruct
	ld a, BANK(Moves)
	call FarCopyBytes

	pop bc
	pop de
	pop hl
	ret

AI_80_20:
	call Random
	cp 20 percent - 1
	ret

AI_50_50:
	call Random
	cp 50 percent + 1
	ret
