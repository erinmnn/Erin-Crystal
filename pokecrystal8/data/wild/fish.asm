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
	db  70 percent + 1, 10, CHINCHOU
	db  85 percent + 1, 10, TENTACOOL
	db 100 percent,      0, time_group
.Shore_Good:
	db  35 percent,     20, MAGIKARP
	db  70 percent,     20, CHINCHOU
	db  90 percent + 1, 20, TENTACOOL
	db 100 percent,      2, time_group
.Shore_Super:
	db  40 percent,     40, KRABBY
	db  70 percent,     1, time_group
	db  90 percent + 1, 40, KRABBY
	db 100 percent,     40, KINGLER

.Ocean_Old:
	db  70 percent + 1, 1, time_group
	db  85 percent + 1, 10, GRIMER
	db 100 percent,     10, STARYU
.Ocean_Good:
	db  35 percent,     20, REMORAID
	db  70 percent,     20, QWILFISH
	db  90 percent + 1,  3, time_group
	db 100 percent,     20, STARYU
.Ocean_Super:
	db  40 percent,     40, CHINCHOU
	db  70 percent,     3, time_group
	db  90 percent + 1, 40, TENTACRUEL
	db 100 percent,     40, LANTURN

.Lake_Old:
	db  70 percent + 1, 10, WOOPER
	db  85 percent + 1, 10, OMANYTE
	db 100 percent,     10, KABUTO
.Lake_Good:
	db  35 percent,     20, KABUTO
	db  70 percent,     20, OMANYTE
	db  90 percent + 1, 20, GRIMER
	db 100 percent,     20, QUAGSIRE
.Lake_Super:
	db  40 percent,     40, GOLDEEN
	db  70 percent,     5, time_group
	db  90 percent + 1, 40, MAGIKARP
	db 100 percent,     40, SEAKING

.Pond_Old:
	db  70 percent + 1, 10, GOLDEEN
	db  85 percent + 1, 10, HORSEA
	db 100 percent,      1, time_group
.Pond_Good:
	db  35 percent,     20, MAGIKARP
	db  70 percent,     20, GOLDEEN
	db  90 percent + 1, 20, HORSEA
	db 100 percent,      4, time_group
.Pond_Super:
	db  40 percent,     40, POLIWAG
	db  70 percent,     7, time_group
	db  90 percent + 1, 40, MAGIKARP
	db 100 percent,     40, POLIWAG

.Dratini_Old:
	db  70 percent + 1, 10, DRATINI
	db  85 percent + 1, 10, DRATINI
	db 100 percent,     10, DRAGONAIR
.Dratini_Good:
	db  35 percent,     20, DRAGONAIR
	db  70 percent,     20, DRAGONAIR
	db  90 percent + 1, 20, DRAGONAIR
	db 100 percent,     20, DRAGONAIR
.Dratini_Super:
	db  40 percent,     40, MAGIKARP
	db  70 percent,     9, time_group
	db  90 percent + 1, 40, MAGIKARP
	db 100 percent,     40, DRAGONAIR

.Qwilfish_Swarm_Old:
	db  70 percent + 1, 5, QWILFISH
	db  85 percent + 1, 5, QWILFISH
	db 100 percent,     5, QWILFISH
.Qwilfish_Swarm_Good:
	db  35 percent,     20, QWILFISH
	db  70 percent,     20, QWILFISH
	db  90 percent + 1, 20, QWILFISH
	db 100 percent,     10, QWILFISH
.Qwilfish_Swarm_Super:
	db  40 percent,     40, QWILFISH
	db  70 percent,     40, QWILFISH
	db  90 percent + 1, 40, QWILFISH
	db 100 percent,     40, QWILFISH

.Remoraid_Swarm_Old:
	db  70 percent + 1, 10, REMORAID
	db  85 percent + 1, 10, REMORAID
	db 100 percent,     10, REMORAID
.Remoraid_Swarm_Good:
	db  35 percent,     20, REMORAID
	db  70 percent,     20, REMORAID
	db  90 percent + 1, 20, REMORAID
	db 100 percent,     20, REMORAID
.Remoraid_Swarm_Super:
	db  40 percent,     40, REMORAID
	db  70 percent,     40, REMORAID
	db  90 percent + 1, 40, REMORAID
	db 100 percent,     40, REMORAID

.Gyarados_Old:
	db  70 percent + 1, 20, MAGIKARP
	db  85 percent + 1, 20, MAGIKARP
	db 100 percent,     30, MAGIKARP
.Gyarados_Good:
	db  35 percent,     20, MAGIKARP
	db  70 percent,     20, MAGIKARP
	db  90 percent + 1, 20, MAGIKARP
	db 100 percent,     30, GYARADOS
.Gyarados_Super:
	db  40 percent,     40, GYARADOS
	db  70 percent,     40, GYARADOS
	db  90 percent + 1, 40, GYARADOS
	db 100 percent,     40, GYARADOS

.Dratini_2_Old:
	db  70 percent + 1, 10, MAGIKARP
	db  85 percent + 1, 10, MAGIKARP
	db 100 percent,     10, DRATINI
.Dratini_2_Good:
	db  35 percent,     20, MAGIKARP
	db  70 percent,     20, SEADRA
	db  90 percent + 1, 20, DRAGONAIR
	db 100 percent,     20, GYARADOS
.Dratini_2_Super:
	db  40 percent,     10, MAGIKARP
	db  70 percent,     17, time_group
	db  90 percent + 1, 10, MAGIKARP
	db 100 percent,     10, DRAGONAIR

.WhirlIslands_Old:
	db  70 percent + 1, 20, MAGIKARP
	db  85 percent + 1, 20, CHINCHOU
	db 100 percent,     20, TENTACOOL
.WhirlIslands_Good:
	db  35 percent,     32, POLIWHIRL
	db  70 percent,     32, DEWGONG
	db  90 percent + 1,  5, time_group
	db 100 percent,     32, SEADRA
.WhirlIslands_Super:
	db  40 percent,     40, KRABBY
	db  70 percent,     19, time_group
	db  90 percent + 1, 40, KINGLER
	db 100 percent,     40, SEADRA

.Qwilfish_NoSwarm_Old:
.Qwilfish_Old:
	db  70 percent + 1, 10, MAGIKARP
	db  85 percent + 1, 10, MAGIKARP
	db 100 percent,     10, TENTACOOL
.Qwilfish_NoSwarm_Good:
.Qwilfish_Good:
	db  35 percent,     20, MAGIKARP
	db  70 percent,     20, TENTACOOL
	db  90 percent + 1, 20, TENTACOOL
	db 100 percent,     20, time_group
.Qwilfish_NoSwarm_Super:
.Qwilfish_Super:
	db  40 percent,     40, TENTACOOL
	db  70 percent,     21, time_group
	db  90 percent + 1, 40, MAGIKARP
	db 100 percent,     40, QWILFISH

.Remoraid_Old:
	db  70 percent + 1, 10, MAGIKARP
	db  85 percent + 1, 10, MAGIKARP
	db 100 percent,     10, POLIWAG
.Remoraid_Good:
	db  35 percent,     20, MAGIKARP
	db  70 percent,     20, POLIWAG
	db  90 percent + 1, 20, POLIWAG
	db 100 percent,     6, time_group
.Remoraid_Super:
	db  40 percent,     40, POLIWAG
	db  70 percent,     7, time_group
	db  90 percent + 1, 40, MAGIKARP
	db 100 percent,     40, REMORAID

TimeFishGroups:
	;     day             nite
	db 10, KRABBY,     10, SHELLDER   ; 0
	db 10, REMORAID,   10, QWILFISH   ; 1
	db 20, KINGLER,    20, CLOYSTER   ; 2
	db 20, MANTINE,    20, TENTACRUEL ; 3
	db 20, REMORAID,   20, QWILFISH   ; 4
	db 32, LANTURN,    32, TENTACRUEL ; 5
	db 20, POLIWAG,    20, POLIWAG    ; 6
	db 40, POLIWAG,    40, POLIWAG    ; 7
	db 20, DRATINI,    20, DRATINI    ; 8
	db 40, DRATINI,    40, DRATINI    ; 9
	db 20, QWILFISH,   20, QWILFISH   ; 10
	db 40, QWILFISH,   40, QWILFISH   ; 11
	db 20, REMORAID,   20, REMORAID   ; 12
	db 40, REMORAID,   40, REMORAID   ; 13
	db 20, GYARADOS,   20, GYARADOS   ; 14
	db 40, GYARADOS,   40, GYARADOS   ; 15
	db 10, DRATINI,    10, DRATINI    ; 16
	db 10, DRATINI,    10, DRATINI    ; 17
	db 20, HORSEA,     20, HORSEA     ; 18
	db 40, HORSEA,     40, HORSEA     ; 19
	db 20, TENTACOOL,  20, TENTACOOL  ; 20
	db 40, TENTACOOL,  40, TENTACOOL  ; 21
