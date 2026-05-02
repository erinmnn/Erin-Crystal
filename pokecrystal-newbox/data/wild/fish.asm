DEF time_group EQUS "0," ; use the nth TimeFishGroups entry

MACRO fishgroup
; chance, old rod, good rod, super rod
	db \1
	dw \2, \3, \4
ENDM

FishGroups:
; entries correspond to FISHGROUP_* constants
	table_width FISHGROUP_DATA_LENGTH
	fishgroup 50 percent + 1, .Shore_Old,            .Shore_Good,            .Shore_Super
	fishgroup 50 percent + 1, .Ocean_Old,            .Ocean_Good,            .Ocean_Super
	fishgroup 50 percent + 1, .Lake_Old,             .Lake_Good,             .Lake_Super
	fishgroup 50 percent + 1, .Pond_Old,             .Pond_Good,             .Pond_Super
	fishgroup 50 percent + 1, .Dratini_Old,          .Dratini_Good,          .Dratini_Super
	fishgroup 50 percent + 1, .Qwilfish_Swarm_Old,   .Qwilfish_Swarm_Good,   .Qwilfish_Swarm_Super
	fishgroup 50 percent + 1, .Remoraid_Swarm_Old,   .Remoraid_Swarm_Good,   .Remoraid_Swarm_Super
	fishgroup 50 percent + 1, .Gyarados_Old,         .Gyarados_Good,         .Gyarados_Super
	fishgroup 50 percent + 1, .Dratini_2_Old,        .Dratini_2_Good,        .Dratini_2_Super
	fishgroup 50 percent + 1, .WhirlIslands_Old,     .WhirlIslands_Good,     .WhirlIslands_Super
	fishgroup 50 percent + 1, .Qwilfish_Old,         .Qwilfish_Good,         .Qwilfish_Super
	fishgroup 50 percent + 1, .Remoraid_Old,         .Remoraid_Good,         .Remoraid_Super
	fishgroup 50 percent + 1, .Qwilfish_NoSwarm_Old, .Qwilfish_NoSwarm_Good, .Qwilfish_NoSwarm_Super
	assert_table_length NUM_FISHGROUPS

.Shore_Old:
	db  70 percent + 1, CHINCHOU, 10
	db  85 percent + 1, TENTACOOL, 10
	db 100 percent,     time_group 0
.Shore_Good:
	db  35 percent,     MAGIKARP, 20
	db  70 percent,     CHINCHOU, 20
	db  90 percent + 1, TENTACOOL, 20
	db 100 percent,     time_group 2
.Shore_Super:
	db  40 percent,     KRABBY, 40
	db  70 percent,     time_group 1
	db  90 percent + 1, KRABBY, 40
	db 100 percent,     KINGLER, 40

.Ocean_Old:
	db  70 percent + 1, time_group 1
	db  85 percent + 1, GRIMER, 10
	db 100 percent,     STARYU, 10
.Ocean_Good:
	db  35 percent,     REMORAID, 20
	db  70 percent,     QWILFISH, 20
	db  90 percent + 1, time_group 3
	db 100 percent,     STARYU, 20
.Ocean_Super:
	db  40 percent,     CHINCHOU, 40
	db  70 percent,     time_group 3
	db  90 percent + 1, TENTACRUEL, 40
	db 100 percent,     LANTURN, 40

.Lake_Old:
	db  70 percent + 1, WOOPER, 10
	db  85 percent + 1, OMANYTE, 10
	db 100 percent,     KABUTO, 10
.Lake_Good:
	db  35 percent,     KABUTO, 20
	db  70 percent,     OMANYTE, 20
	db  90 percent + 1, GRIMER, 20
	db 100 percent,     QUAGSIRE, 20
.Lake_Super:
	db  40 percent,     GOLDEEN, 40
	db  70 percent,     time_group 5
	db  90 percent + 1, MAGIKARP, 40
	db 100 percent,     SEAKING, 40

.Pond_Old:
	db  70 percent + 1, GOLDEEN, 10
	db  85 percent + 1, HORSEA, 10
	db 100 percent,     time_group 1
.Pond_Good:
	db  35 percent,     MAGIKARP, 20
	db  70 percent,     GOLDEEN, 20
	db  90 percent + 1, HORSEA, 20
	db 100 percent,     time_group 4
.Pond_Super:
	db  40 percent,     POLIWAG, 40
	db  70 percent,     time_group 7
	db  90 percent + 1, MAGIKARP, 40
	db 100 percent,     POLIWAG, 40

.Dratini_Old:
	db  70 percent + 1, DRATINI, 10
	db  85 percent + 1, DRATINI, 10
	db 100 percent,     DRAGONAIR, 10
.Dratini_Good:
	db  35 percent,     DRAGONAIR, 20
	db  70 percent,     DRAGONAIR, 20
	db  90 percent + 1, DRAGONAIR, 20
	db 100 percent,     DRAGONAIR, 20
.Dratini_Super:
	db  40 percent,     MAGIKARP, 40
	db  70 percent,     time_group 9
	db  90 percent + 1, MAGIKARP, 40
	db 100 percent,     DRAGONAIR, 40

.Qwilfish_Swarm_Old:
	db  70 percent + 1, QWILFISH, 5
	db  85 percent + 1, QWILFISH, 5
	db 100 percent,     QWILFISH, 5
.Qwilfish_Swarm_Good:
	db  35 percent,     QWILFISH, 20
	db  70 percent,     QWILFISH, 20
	db  90 percent + 1, QWILFISH, 20
	db 100 percent,     QWILFISH, 20
.Qwilfish_Swarm_Super:
	db  40 percent,     QWILFISH, 40
	db  70 percent,     QWILFISH, 40
	db  90 percent + 1, QWILFISH, 40
	db 100 percent,     QWILFISH, 40

.Remoraid_Swarm_Old:
	db  70 percent + 1, REMORAID, 10
	db  85 percent + 1, REMORAID, 10
	db 100 percent,     REMORAID, 10
.Remoraid_Swarm_Good:
	db  35 percent,     REMORAID, 20
	db  70 percent,     REMORAID, 20
	db  90 percent + 1, REMORAID, 20
	db 100 percent,     REMORAID, 20
.Remoraid_Swarm_Super:
	db  40 percent,     REMORAID, 40
	db  70 percent,     REMORAID, 40
	db  90 percent + 1, REMORAID, 40
	db 100 percent,     REMORAID, 40

.Gyarados_Old:
	db  70 percent + 1, MAGIKARP, 20
	db  85 percent + 1, MAGIKARP, 20
	db 100 percent,     MAGIKARP, 30
.Gyarados_Good:
	db  35 percent,     MAGIKARP, 20
	db  70 percent,     MAGIKARP, 20
	db  90 percent + 1, MAGIKARP, 20
	db 100 percent,     GYARADOS, 30
.Gyarados_Super:
	db  40 percent,     GYARADOS, 40
	db  70 percent,     GYARADOS, 40
	db  90 percent + 1, GYARADOS, 40
	db 100 percent,     GYARADOS, 40

.Dratini_2_Old:
	db  70 percent + 1, MAGIKARP, 10
	db  85 percent + 1, MAGIKARP, 10
	db 100 percent,     DRATINI, 10
.Dratini_2_Good:
	db  35 percent,     MAGIKARP, 20
	db  70 percent,     SEADRA, 20
	db  90 percent + 1, DRAGONAIR, 20
	db 100 percent,     GYARADOS, 20
.Dratini_2_Super:
	db  40 percent,     MAGIKARP, 10
	db  70 percent,     time_group 17
	db  90 percent + 1, MAGIKARP, 10
	db 100 percent,     DRAGONAIR, 10

.WhirlIslands_Old:
	db  70 percent + 1, MAGIKARP, 20
	db  85 percent + 1, CHINCHOU, 20
	db 100 percent,     TENTACOOL, 20
.WhirlIslands_Good:
	db  35 percent,     POLIWHIRL, 32
	db  70 percent,     DEWGONG, 32
	db  90 percent + 1, time_group 5
	db 100 percent,     SEADRA, 32
.WhirlIslands_Super:
	db  40 percent,     KRABBY, 40
	db  70 percent,     time_group 19
	db  90 percent + 1, KINGLER, 40
	db 100 percent,     SEADRA, 40

.Qwilfish_NoSwarm_Old:
.Qwilfish_Old:
	db  70 percent + 1, MAGIKARP, 10
	db  85 percent + 1, MAGIKARP, 10
	db 100 percent,     TENTACOOL, 10
.Qwilfish_NoSwarm_Good:
.Qwilfish_Good:
	db  35 percent,     MAGIKARP, 20
	db  70 percent,     TENTACOOL, 20
	db  90 percent + 1, TENTACOOL, 20
	db 100 percent,     time_group 20
.Qwilfish_NoSwarm_Super:
.Qwilfish_Super:
	db  40 percent,     TENTACOOL, 40
	db  70 percent,     time_group 21
	db  90 percent + 1, MAGIKARP, 40
	db 100 percent,     QWILFISH, 40

.Remoraid_Old:
	db  70 percent + 1, MAGIKARP, 10
	db  85 percent + 1, MAGIKARP, 10
	db 100 percent,     POLIWAG, 10
.Remoraid_Good:
	db  35 percent,     MAGIKARP, 20
	db  70 percent,     POLIWAG, 20
	db  90 percent + 1, POLIWAG, 20
	db 100 percent,     time_group 6
.Remoraid_Super:
	db  40 percent,     POLIWAG, 40
	db  70 percent,     time_group 7
	db  90 percent + 1, MAGIKARP, 40
	db 100 percent,     REMORAID, 40

TimeFishGroups:
	;     day             nite
	db KRABBY,     10, SHELLDER, 10   ; 0
	db REMORAID,   10, QWILFISH, 10   ; 1
	db KINGLER,    20, CLOYSTER, 20   ; 2
	db MANTINE,    20, TENTACRUEL, 20 ; 3
	db REMORAID,   20, QWILFISH, 20   ; 4
	db LANTURN,    32, TENTACRUEL, 32 ; 5
	db POLIWAG,   20, POLIWAG, 20    ; 6
	db POLIWAG,    40, POLIWAG, 40    ; 7
	db DRATINI,   20, DRATINI, 20    ; 8
	db DRATINI,    40, DRATINI, 40    ; 9
	db QWILFISH,   20, QWILFISH, 20   ; 10
	db QWILFISH,  40, QWILFISH, 40   ; 11
	db REMORAID,   20, REMORAID, 20   ; 12
	db REMORAID,   40, REMORAID, 40   ; 13
	db GYARADOS,   20, GYARADOS, 20   ; 14
	db GYARADOS,   40, GYARADOS, 40   ; 15
	db DRATINI,    10, DRATINI, 10    ; 16
	db DRATINI,    10, DRATINI, 10    ; 17
	db HORSEA,     20, HORSEA, 20     ; 18
	db HORSEA,     40, HORSEA, 40     ; 19
	db TENTACOOL,  20, TENTACOOL, 20  ; 20
	db TENTACOOL,  40, TENTACOOL, 40  ; 21
