SECTION "Evolutions and Attacks", ROMX

; Evos+attacks data structure:
; - Evolution methods:
;    * db EVOLVE_LEVEL, level, species
;    * db EVOLVE_ITEM, used item, species
;    * db EVOLVE_TRADE, held item (or -1 for none), species
;    * db EVOLVE_HAPPINESS, TR_* constant (ANYTIME, MORNDAY, NITE), species
;    * db EVOLVE_STAT, level, ATK_*_DEF constant (LT, GT, EQ), species
; - db 0 ; no more evolutions
; - Learnset (in increasing level order):
;    * db level, move
; - db 0 ; no more level-up moves

INCLUDE "data/pokemon/evos_attacks_pointers.asm"

BulbasaurEvosAttacks:
	db EVOLVE_LEVEL, 16, IVYSAUR
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 5, LEECH_SEED
	db 7, VINE_WHIP
	db 11, ACID
	db 13, SYNTHESIS
	db 18, STUN_SPORE
	db 21, POISONPOWDER
	db 28, GIGA_DRAIN
	db 30, SLUDGE_BOMB
	db 36, SWEET_SCENT
	db 44, SOLARBEAM
	db 0 ; no more level-up moves

IvysaurEvosAttacks:
	db EVOLVE_LEVEL, 36, VENUSAUR
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 5, LEECH_SEED
	db 7, VINE_WHIP
	db 11, ACID
	db 13, SYNTHESIS
	db 20, STUN_SPORE
	db 27, POISONPOWDER
	db 34, GIGA_DRAIN
	db 40, SLUDGE_BOMB
	db 44, SWEET_SCENT
	db 54, SOLARBEAM
	db 0 ; no more level-up moves

VenusaurEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 5, LEECH_SEED
	db 7, VINE_WHIP
	db 11, ACID
	db 13, SYNTHESIS
	db 20, STUN_SPORE
	db 27, POISONPOWDER
	db 34, GIGA_DRAIN
	db 36, SLUDGE_BOMB
	db 38, BODY_SLAM
	db 44, SWEET_SCENT
	db 54, SOLARBEAM
	db 60, EARTHQUAKE
	db 64, PETAL_DANCE
	db 0 ; no more level-up moves

CharmanderEvosAttacks:
	db EVOLVE_LEVEL, 16, CHARMELEON
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 5, EMBER
	db 7, FIRE_SPIN
	db 11, METAL_CLAW
	db 13, FLAME_WHEEL
	db 18, DRAGON_RAGE
	db 22, FLAMETHROWER
	db 28, IRON_TAIL
	db 30, DRAGONBREATH
	db 34, SOLARBEAM
	db 44, FIRE_BLAST
	db 0 ; no more level-up moves

CharmeleonEvosAttacks:
	db EVOLVE_LEVEL, 36, CHARIZARD
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 5, EMBER
	db 7, FIRE_SPIN
	db 11, METAL_CLAW
	db 13, FLAME_WHEEL
	db 18, DRAGON_RAGE
	db 27, FLAMETHROWER
	db 34, IRON_TAIL
	db 40, DRAGONBREATH
	db 44, SOLARBEAM
	db 54, FIRE_BLAST
	db 0 ; no more level-up moves

CharizardEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 5, EMBER
	db 7, FIRE_SPIN
	db 11, METAL_CLAW
	db 13, FLAME_WHEEL
	db 20, DRAGON_RAGE
	db 27, FLAMETHROWER
	db 34, IRON_TAIL
	db 36, WING_ATTACK
	db 38, EARTHQUAKE
	db 44, DRAGONBREATH
	db 54, SOLARBEAM
	db 60, SKY_ATTACK
	db 64, FIRE_BLAST
	db 0 ; no more level-up moves

SquirtleEvosAttacks:
	db EVOLVE_LEVEL, 16, WARTORTLE
	db 0 ; no more evolutions
	db 1, POUND
	db 1, WITHDRAW
	db 5, WATER_GUN
	db 7, BITE
	db 11, BODY_SLAM
	db 13, BUBBLEBEAM
	db 17, PROTECT
	db 22, RAPID_SPIN
	db 28, COUNTER
	db 30, SUBMISSION
	db 34, SKULL_BASH
	db 44, HYDRO_PUMP
	db 0 ; no more level-up moves

WartortleEvosAttacks:
	db EVOLVE_LEVEL, 36, BLASTOISE
	db 0 ; no more evolutions
	db 1, POUND
	db 1, WITHDRAW
	db 5, WATER_GUN
	db 7, BITE
	db 11, BODY_SLAM
	db 13, BUBBLEBEAM
	db 17, PROTECT
	db 27, RAPID_SPIN
	db 34, COUNTER
	db 38, SUBMISSION
	db 44, SKULL_BASH
	db 54, HYDRO_PUMP
	db 0 ; no more level-up moves

BlastoiseEvosAttacks:
	db 0 ; no more evolutions
	db 1, POUND
	db 1, WITHDRAW
	db 5, WATER_GUN
	db 7, BITE
	db 11, BODY_SLAM
	db 13, BUBBLEBEAM
	db 20, PROTECT
	db 27, RAPID_SPIN
	db 34, COUNTER
	db 36, MIRROR_COAT
	db 38, ICE_BEAM
	db 44, SUBMISSION
	db 54, SKULL_BASH
	db 60, EARTHQUAKE
	db 64, HYDRO_PUMP
	db 0 ; no more level-up moves

CaterpieEvosAttacks:
	db EVOLVE_LEVEL, 7, METAPOD
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, STRING_SHOT
	db 0 ; no more level-up moves

MetapodEvosAttacks:
	db EVOLVE_LEVEL, 10, BUTTERFREE
	db 0 ; no more evolutions
	db 1, HARDEN
	db 7, HARDEN
	db 0 ; no more level-up moves

ButterfreeEvosAttacks:
	db 0 ; no more evolutions
	db 1, STRING_SHOT
	db 10, CONFUSION
	db 13, POISONPOWDER
	db 13, STUN_SPORE
	db 13, SLEEP_POWDER
	db 16, MEGA_DRAIN
	db 18, CONFUSE_RAY
	db 20, PSYBEAM
	db 22, ENCORE
	db 34, GIGA_DRAIN
	db 40, PSYCHIC_M
	db 48, LEECH_LIFE
	db 60, MORNING_SUN
	db 0 ; no more level-up moves

WeedleEvosAttacks:
	db EVOLVE_LEVEL, 7, KAKUNA
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, STRING_SHOT
	db 0 ; no more level-up moves

KakunaEvosAttacks:
	db EVOLVE_LEVEL, 10, BEEDRILL
	db 0 ; no more evolutions
	db 1, HARDEN
	db 7, HARDEN
	db 0 ; no more level-up moves

BeedrillEvosAttacks:
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 10, FURY_ATTACK
	db 14, TWINEEDLE
	db 16, GIGA_DRAIN
	db 21, SLUDGE_BOMB
	db 25, FURY_CUTTER
	db 30, WING_ATTACK
	db 32, ENDURE
	db 35, PIN_MISSILE
	db 40, LEECH_LIFE
	db 43, TOXIC
	db 48, DRILL_PECK
	db 51, SLUDGE
	db 0 ; no more level-up moves

PidgeyEvosAttacks:
	db EVOLVE_LEVEL, 16, PIDGEOTTO
	db 0 ; no more evolutions
	db 1, GUST
	db 5, SAND_ATTACK
	db 12, QUICK_ATTACK
	db 14, WING_ATTACK
	db 21, WHIRLWIND
	db 22, DRILL_PECK
	db 25, EXTREMESPEED
	db 29, STEEL_WING
	db 37, ENDURE
	db 47, AEROBLAST
	db 0 ; no more level-up moves

PidgeottoEvosAttacks:
	db EVOLVE_LEVEL, 27, PIDGEOT
	db 0 ; no more evolutions
	db 1, GUST
	db 5, SAND_ATTACK
	db 12, QUICK_ATTACK
	db 16, WING_ATTACK
	db 21, WHIRLWIND
	db 22, DRILL_PECK
	db 25, EXTREMESPEED
	db 29, STEEL_WING
	db 37, ENDURE
	db 47, AEROBLAST
	db 0 ; no more level-up moves

PidgeotEvosAttacks:
	db 0 ; no more evolutions
	db 1, GUST
	db 5, SAND_ATTACK
	db 12, QUICK_ATTACK
	db 16, WING_ATTACK
	db 21, WHIRLWIND
	db 22, DRILL_PECK
	db 25, EXTREMESPEED
	db 30, STEEL_WING
	db 36, FLAMETHROWER
	db 40, ENDURE
	db 50, AEROBLAST
	db 0 ; no more level-up moves

RattataEvosAttacks:
	db EVOLVE_LEVEL, 20, RATICATE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 7, QUICK_ATTACK
	db 13, HYPER_FANG
	db 20, FOCUS_ENERGY
	db 23, SUBMISSION
	db 27, CRUNCH
	db 31, SHADOW_BALL
	db 34, SUPER_FANG
	db 38, IRON_TAIL
	db 39, DOUBLE_EDGE
	db 0 ; no more level-up moves

RaticateEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 7, QUICK_ATTACK
	db 13, HYPER_FANG
	db 20, SCARY_FACE
	db 23, SUBMISSION
	db 27, CRUNCH
	db 30, DOUBLE_EDGE
	db 32, SHADOW_BALL
	db 38, IRON_TAIL
	db 40, SUPER_FANG
	db 0 ; no more level-up moves

SpearowEvosAttacks:
	db EVOLVE_LEVEL, 20, FEAROW
	db 0 ; no more evolutions
	db 1, PECK
	db 1, GROWL
	db 7, LEER
	db 13, FURY_ATTACK
	db 16, WING_ATTACK
	db 24, HEADBUTT
	db 31, MIRROR_MOVE
	db 27, DRILL_PECK
	db 41, STEEL_WING
	db 43, DOUBLE_EDGE
	db 52, SKY_ATTACK
	db 0 ; no more level-up moves

FearowEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 1, GROWL
	db 7, LEER
	db 13, FURY_ATTACK
	db 16, WING_ATTACK
	db 24, HEADBUTT
	db 31, MIRROR_MOVE
	db 27, DRILL_PECK
	db 41, STEEL_WING
	db 45, DOUBLE_EDGE
	db 55, SKY_ATTACK
	db 0 ; no more level-up moves

EkansEvosAttacks:
	db EVOLVE_LEVEL, 16, ARBOK
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, LEER
	db 5, ACID
	db 9, TOXIC
	db 11, HEADBUTT
	db 15, BITE
	db 23, GLARE
	db 25, SLUDGE_BOMB
	db 29, SCREECH
	db 37, ACID
	db 43, HAZE
	db 44, SHADOW_BALL
	db 52, SLUDGE
	db 0 ; no more level-up moves

ArbokEvosAttacks:
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, LEER
	db 5, ACID
	db 9, TOXIC
	db 11, HEADBUTT
	db 15, BITE
	db 23, GLARE
	db 25, SLUDGE_BOMB
	db 29, SCREECH
	db 37, ACID
	db 43, HAZE
	db 46, SHADOW_BALL
	db 53, EARTHQUAKE
	db 66, SLUDGE
	db 0 ; no more level-up moves

PikachuEvosAttacks:
	db EVOLVE_LEVEL, 22, RAICHU
	db 0 ; no more evolutions
	db 1, THUNDERSHOCK
	db 6, TAIL_WHIP
	db 8, THUNDER_WAVE
	db 11, QUICK_ATTACK
	db 15, DOUBLE_TEAM
	db 16, SPARK
	db 20, HEADBUTT
	db 26, THUNDERBOLT
	db 29, IRON_TAIL
	db 31, THUNDER
	db 37, SURF
	db 0 ; no more level-up moves

RaichuEvosAttacks:
	db 0 ; no more evolutions
	db 1, THUNDERSHOCK
	db 6, TAIL_WHIP
	db 8, THUNDER_WAVE
	db 11, QUICK_ATTACK
	db 15, DOUBLE_TEAM
	db 16, SPARK
	db 20, HEADBUTT
	db 26, THUNDERBOLT
	db 33, IRON_TAIL
	db 39, THUNDER
	db 46, SURF
	db 0 ; no more level-up moves

SandshrewEvosAttacks:
	db EVOLVE_LEVEL, 22, SANDSLASH
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 6, DEFENSE_CURL
	db 8, SAND_ATTACK
	db 11, ROCK_THROW
	db 15, DIG
	db 15, POISON_STING
	db 16, SLASH
	db 24, ROCK_SLIDE
	db 37, EARTHQUAKE
	db 45, DOUBLE_EDGE
	db 0 ; no more level-up moves

SandslashEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, DEFENSE_CURL
	db 11, SAND_ATTACK
	db 11, POISON_STING
	db 24, SLASH
	db 29, ROCK_SLIDE
	db 35, RAPID_SPIN
	db 40, EARTHQUAKE
	db 52, DOUBLE_EDGE
	db 0 ; no more level-up moves

NidoranFEvosAttacks:
	db EVOLVE_LEVEL, 16, NIDORINA
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, SAND_ATTACK
	db 12, DOUBLE_KICK
	db 14, ACID
	db 24, SLASH
	db 27, DIG
	db 29, RAPID_SPIN
	db 31, ROCK_SLIDE
	db 36, EARTHQUAKE
	db 0 ; no more level-up moves

NidorinaEvosAttacks:
	db EVOLVE_LEVEL, 36, NIDOQUEEN
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 12, DOUBLE_KICK
	db 16, HORN_ATTACK
	db 19, DIG
	db 24, SLASH
	db 27, SLUDGE_BOMB
	db 32, RAPID_SPIN
	db 40, ROCK_SLIDE
	db 46, EARTHQUAKE
	db 0 ; no more level-up moves

NidoqueenEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 12, DOUBLE_KICK
	db 19, DIG
	db 24, SLASH
	db 27, SLUDGE_BOMB
	db 36, CRUNCH
	db 40, ROCK_SLIDE
	db 45, ICE_BEAM
	db 45, FLAMETHROWER
	db 45, THUNDERBOLT
	db 49, MOONLIGHT
	db 55, EARTHQUAKE
	db 0 ; no more level-up moves

NidoranMEvosAttacks:
	db EVOLVE_LEVEL, 16, NIDORINO
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, SAND_ATTACK
	db 12, DOUBLE_KICK
	db 14, ACID
	db 24, SLASH
	db 27, DIG
	db 29, RAPID_SPIN
	db 31, ROCK_SLIDE
	db 36, EARTHQUAKE
	db 0 ; no more level-up moves

NidorinoEvosAttacks:
	db EVOLVE_LEVEL, 36, NIDOKING
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 12, DOUBLE_KICK
	db 16, HORN_ATTACK
	db 19, DIG
	db 24, SLASH
	db 27, SLUDGE_BOMB
	db 32, RAPID_SPIN
	db 40, ROCK_SLIDE
	db 46, EARTHQUAKE
	db 0 ; no more level-up moves

NidokingEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 12, DOUBLE_KICK
	db 19, DIG
	db 24, SLASH
	db 27, SLUDGE_BOMB
	db 36, DRILL_PECK
	db 40, ROCK_SLIDE
	db 45, ICE_BEAM
	db 45, FLAMETHROWER
	db 45, THUNDERBOLT
	db 49, MEGAHORN
	db 55, EARTHQUAKE
	db 0 ; no more level-up moves

ClefairyEvosAttacks:
	db EVOLVE_LEVEL, 31, CLEFABLE
	db 0 ; no more evolutions
	db 1, POUND
	db 1, GROWL
	db 4, ENCORE
	db 8, SING
	db 13, DOUBLESLAP
	db 19, MINIMIZE
	db 21, BODY_SLAM
	db 26, DEFENSE_CURL
	db 27, COMET_PUNCH
	db 34, METRONOME
	db 43, MOONLIGHT
	db 53, DOUBLE_EDGE
	db 0 ; no more level-up moves

ClefableEvosAttacks:
	db 0 ; no more evolutions
	db 1, POUND
	db 1, GROWL
	db 4, ENCORE
	db 8, SING
	db 13, DOUBLESLAP
	db 19, MINIMIZE
	db 21, BODY_SLAM
	db 26, DEFENSE_CURL
	db 27, COMET_PUNCH
	db 34, METRONOME
	db 43, MOONLIGHT
	db 53, STEEL_WING
	db 0 ; no more level-up moves

VulpixEvosAttacks:
	db EVOLVE_LEVEL, 19, NINETALES
	db 0 ; no more evolutions
	db 1, EMBER
	db 1, TAIL_WHIP
	db 7, QUICK_ATTACK
	db 11, BITE
	db 13, ROAR
	db 15, FLAME_WHEEL
	db 19, CONFUSE_RAY
	db 25, SAFEGUARD
	db 26, PSYCHIC_M
	db 29, FIRE_SPIN
	db 31, FLAMETHROWER
	db 34, SOLARBEAM
	db 37, FIRE_BLAST
	db 0 ; no more level-up moves

NinetalesEvosAttacks:
	db 0 ; no more evolutions
	db 1, EMBER
	db 1, TAIL_WHIP
	db 7, QUICK_ATTACK
	db 13, ROAR
	db 15, FLAME_WHEEL
	db 19, CONFUSE_RAY
	db 25, SAFEGUARD
	db 26, PSYCHIC_M
	db 29, FIRE_SPIN
	db 31, FLAMETHROWER
	db 34, SOLARBEAM
	db 37, FIRE_BLAST
	db 51, SACRED_FIRE
	db 0 ; no more level-up moves

JigglypuffEvosAttacks:
	db EVOLVE_LEVEL, 31, WIGGLYTUFF
	db 0 ; no more evolutions
	db 1, SING
	db 4, DEFENSE_CURL
	db 9, POUND
	db 14, DISABLE
	db 19, ROLLOUT
	db 24, DOUBLESLAP
	db 29, REST
	db 31, LOVELY_KISS
	db 34, BODY_SLAM
	db 39, DOUBLE_EDGE
	db 0 ; no more level-up moves

WigglytuffEvosAttacks:
	db 0 ; no more evolutions
	db 1, SING
	db 4, DEFENSE_CURL
	db 9, POUND
	db 14, DISABLE
	db 19, ROLLOUT
	db 24, DOUBLESLAP
	db 29, REST
	db 31, LOVELY_KISS
	db 34, BODY_SLAM
	db 39, DOUBLE_EDGE
	db 0 ; no more level-up moves

ZubatEvosAttacks:
	db EVOLVE_LEVEL, 20, GOLBAT
	db 0 ; no more evolutions
	db 1, LEECH_LIFE
	db 6, CONFUSE_RAY
	db 12, GIGA_DRAIN
	db 16, TOXIC
	db 19, WING_ATTACK
	db 26, SCREECH
	db 34, SLUDGE_BOMB
	db 36, MEAN_LOOK
	db 46, HAZE
	db 54, SHADOW_BALL
	db 60, SUPER_FANG
	db 66, SKY_ATTACK
	db 0 ; no more level-up moves

GolbatEvosAttacks:
	db EVOLVE_LEVEL, 41, CROBAT
	db 0 ; no more evolutions
	db 1, LEECH_LIFE
	db 6, CONFUSE_RAY
	db 12, GIGA_DRAIN
	db 16, TOXIC
	db 19, WING_ATTACK
	db 26, SCREECH
	db 34, SLUDGE_BOMB
	db 36, MEAN_LOOK
	db 40, SCREECH
	db 46, HAZE
	db 54, SHADOW_BALL
	db 60, SUPER_FANG
	db 66, SKY_ATTACK
	db 0 ; no more level-up moves

OddishEvosAttacks:
	db EVOLVE_LEVEL, 16, GLOOM
	db 0 ; no more evolutions
	db 1, ABSORB
	db 7, SWEET_SCENT
	db 9, ACID
	db 13, MEGA_DRAIN
	db 14, POISONPOWDER
	db 16, STUN_SPORE
	db 18, SLEEP_POWDER
	db 23, ACID
	db 25, GIGA_DRAIN
	db 27, SLUDGE_BOMB
	db 29, LEECH_SEED
	db 32, MOONLIGHT
	db 39, PETAL_DANCE
	db 0 ; no more level-up moves

GloomEvosAttacks:
	db EVOLVE_LEVEL, 38, VILEPLUME
	db EVOLVE_ITEM, LEAF_STONE, BELLOSSOM
	db 0 ; no more evolutions
	db 1, ABSORB
	db 7, SWEET_SCENT
	db 9, ACID
	db 13, MEGA_DRAIN
	db 14, POISONPOWDER
	db 16, STUN_SPORE
	db 18, SLEEP_POWDER
	db 23, ACID
	db 25, GIGA_DRAIN
	db 27, SLUDGE_BOMB
	db 29, LEECH_SEED
	db 32, MOONLIGHT
	db 39, PETAL_DANCE
	db 0 ; no more level-up moves

VileplumeEvosAttacks:
	db 0 ; no more evolutions
	db 1, ABSORB
	db 7, SWEET_SCENT
	db 9, ACID
	db 13, MEGA_DRAIN
	db 14, POISONPOWDER
	db 16, STUN_SPORE
	db 18, SLEEP_POWDER
	db 23, ACID
	db 25, GIGA_DRAIN
	db 27, SLUDGE_BOMB
	db 29, LEECH_SEED
	db 32, MOONLIGHT
	db 39, PETAL_DANCE
	db 0 ; no more level-up moves

ParasEvosAttacks:
	db EVOLVE_LEVEL, 19, PARASECT
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 7, STUN_SPORE
	db 13, POISONPOWDER
	db 19, LEECH_LIFE
	db 21, SPORE
	db 31, SLASH
	db 37, FURY_CUTTER
	db 43, GIGA_DRAIN
	db 0 ; no more level-up moves

ParasectEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 7, STUN_SPORE
	db 13, POISONPOWDER
	db 19, LEECH_LIFE
	db 28, SPORE
	db 31, SLASH
	db 37, FURY_CUTTER
	db 43, GIGA_DRAIN
	db 0 ; no more level-up moves

VenonatEvosAttacks:
	db EVOLVE_LEVEL, 19, VENOMOTH
	db 0 ; no more evolutions
	db 1, PSYBEAM
	db 1, DISABLE
	db 9, CONFUSE_RAY
	db 12, ACID
	db 20, POISONPOWDER
	db 25, LEECH_LIFE
	db 27, MOONLIGHT
	db 28, STUN_SPORE
	db 32, SLUDGE_BOMB
	db 35, PSYCHIC_M
	db 36, SLEEP_POWDER
	db 0 ; no more level-up moves

VenomothEvosAttacks:
	db 0 ; no more evolutions
	db 1, PSYBEAM
	db 1, DISABLE
	db 9, CONFUSE_RAY
	db 12, ACID
	db 19, WING_ATTACK
	db 22, POISONPOWDER
	db 26, LEECH_LIFE
	db 27, MOONLIGHT
	db 28, STUN_SPORE
	db 32, SLUDGE_BOMB
	db 38, PSYCHIC_M
	db 45, SLEEP_POWDER
	db 0 ; no more level-up moves

DiglettEvosAttacks:
	db EVOLVE_LEVEL, 26, DUGTRIO
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 5, GROWL
	db 9, MAGNITUDE
	db 16, DIG
	db 18, SAND_ATTACK
	db 20, ROCK_SLIDE
	db 26, SLASH
	db 31, EARTHQUAKE
	db 39, FISSURE
	db 0 ; no more level-up moves

DugtrioEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 5, GROWL
	db 9, MAGNITUDE
	db 16, DIG
	db 18, SAND_ATTACK
	db 20, ROCK_SLIDE
	db 26, TRI_ATTACK
	db 28, SLASH
	db 39, EARTHQUAKE
	db 51, FISSURE
	db 0 ; no more level-up moves

MeowthEvosAttacks:
	db EVOLVE_LEVEL, 20, PERSIAN
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, GROWL
	db 11, BITE
	db 16, PAY_DAY
	db 21, SLASH
	db 28, HYPNOSIS
	db 35, SHADOW_BALL
	db 41, FURY_SWIPES
	db 46, PSYCHIC_M
	db 0 ; no more level-up moves

PersianEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, GROWL
	db 11, BITE
	db 16, PAY_DAY
	db 21, SLASH
	db 28, HYPNOSIS
	db 35, SHADOW_BALL
	db 41, FURY_SWIPES
	db 46, PSYCHIC_M
	db 0 ; no more level-up moves

PsyduckEvosAttacks:
	db EVOLVE_LEVEL, 22, GOLDUCK
	db 0 ; no more evolutions
	db 1, PECK
	db 5, DISABLE
	db 10, ENCORE
	db 14, BUBBLEBEAM
	db 16, CONFUSION
	db 23, SCREECH
	db 31, PSYCHIC_M
	db 40, FUTURE_SIGHT
	db 60, HYDRO_PUMP
	db 0 ; no more level-up moves

GolduckEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 14, BUBBLEBEAM
	db 16, CONFUSION
	db 23, ICE_PUNCH
	db 25, SCREECH
	db 31, PSYCHIC_M
	db 34, CROSS_CHOP
	db 40, ENCORE
	db 42, DISABLE
	db 45, FUTURE_SIGHT
	db 60, HYDRO_PUMP
	db 0 ; no more level-up moves

MankeyEvosAttacks:
	db EVOLVE_LEVEL, 25, PRIMEAPE
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 9, LOW_KICK
	db 15, KARATE_CHOP
	db 21, FURY_SWIPES
	db 27, FOCUS_ENERGY
	db 33, SUBMISSION
	db 35, ROCK_SLIDE
	db 39, CROSS_CHOP
	db 45, SCREECH
	db 51, THRASH
	db 0 ; no more level-up moves

PrimeapeEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 9, LOW_KICK
	db 15, KARATE_CHOP
	db 21, FURY_SWIPES
	db 27, FOCUS_ENERGY
	db 28, RAGE
	db 33, SUBMISSION
	db 35, ROCK_SLIDE
	db 39, CROSS_CHOP
	db 45, SCREECH
	db 51, THRASH
	db 0 ; no more level-up moves

GrowlitheEvosAttacks:
	db EVOLVE_LEVEL, 32, ARCANINE
	db 0 ; no more evolutions
	db 1, BITE
	db 1, ROAR
	db 9, EMBER
	db 11, GROWL
	db 16, FLAME_WHEEL
	db 26, CRUNCH
	db 34, SPARK
	db 42, FLAMETHROWER
	db 45, MORNING_SUN
	db 59, FIRE_BLAST
	db 0 ; no more level-up moves

ArcanineEvosAttacks:
	db 0 ; no more evolutions
	db 1, BITE
	db 1, ROAR
	db 9, EMBER
	db 11, GROWL
	db 16, FLAME_WHEEL
	db 26, CRUNCH
	db 34, SPARK
	db 42, FLAMETHROWER
	db 45, MORNING_SUN
	db 50, ANCIENTPOWER
	db 52, EXTREMESPEED
	db 66, FIRE_BLAST
	db 68, SOLARBEAM
	db 0 ; no more level-up moves

PoliwagEvosAttacks:
	db EVOLVE_LEVEL, 21, POLIWHIRL
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 7, HYPNOSIS
	db 13, BUBBLEBEAM
	db 19, DOUBLESLAP
	db 25, PSYBEAM
	db 26, LOVELY_KISS
	db 31, BODY_SLAM
	db 37, ICE_BEAM
	db 43, HYDRO_PUMP
	db 0 ; no more level-up moves

PoliwhirlEvosAttacks:
	db EVOLVE_LEVEL, 43, POLIWRATH
	db EVOLVE_ITEM, KINGS_ROCK, POLITOED
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 7, HYPNOSIS
	db 13, BUBBLEBEAM
	db 19, DOUBLESLAP
	db 25, PSYBEAM
	db 31, VITAL_THROW
	db 35, BODY_SLAM
	db 46, ICE_BEAM
	db 51, HYDRO_PUMP
	db 0 ; no more level-up moves

PoliwrathEvosAttacks:
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 7, HYPNOSIS
	db 19, DOUBLESLAP
	db 43, SUBMISSION
	db 49, WATERFALL
	db 52, CROSS_CHOP
	db 55, HYDRO_PUMP
	db 0 ; no more level-up moves

AbraEvosAttacks:
	db EVOLVE_LEVEL, 22, KADABRA
	db 0 ; no more evolutions
	db 1, CONFUSION
	db 6, TELEPORT
	db 10, DISABLE
	db 0 ; no more level-up moves

KadabraEvosAttacks:
	db EVOLVE_LEVEL, 41, ALAKAZAM
	db 0 ; no more evolutions
	db 1, TELEPORT
	db 1, CONFUSION
	db 10, DISABLE
	db 22, PSYBEAM
	db 26, RECOVER
	db 24, ICE_PUNCH
	db 29, FIRE_PUNCH
	db 38, PSYCHIC_M
	db 45, THUNDERPUNCH
	db 51, FUTURE_SIGHT
	db 0 ; no more level-up moves

AlakazamEvosAttacks:
	db 0 ; no more evolutions
	db 1, TELEPORT
	db 1, CONFUSION
	db 10, DISABLE
	db 22, PSYBEAM
	db 26, RECOVER
	db 24, ICE_PUNCH
	db 29, FIRE_PUNCH
	db 38, PSYCHIC_M
	db 45, THUNDERPUNCH
	db 51, FUTURE_SIGHT
	db 0 ; no more level-up moves

MachopEvosAttacks:
	db EVOLVE_LEVEL, 22, MACHOKE
	db 0 ; no more evolutions
	db 1, LOW_KICK
	db 1, LEER
	db 7, ROCK_THROW
	db 13, KARATE_CHOP
	db 19, SEISMIC_TOSS
	db 22, VITAL_THROW
	db 31, ROCK_SLIDE
	db 37, SUBMISSION
	db 43, SCARY_FACE
	db 49, CROSS_CHOP
	db 0 ; no more level-up moves

MachokeEvosAttacks:
	db EVOLVE_LEVEL, 41, MACHAMP
	db 0 ; no more evolutions
	db 1, LOW_KICK
	db 1, LEER
	db 7, ROCK_THROW
	db 13, KARATE_CHOP
	db 19, SEISMIC_TOSS
	db 22, VITAL_THROW
	db 31, ROCK_SLIDE
	db 37, SUBMISSION
	db 43, SCARY_FACE
	db 49, CROSS_CHOP
	db 0 ; no more level-up moves

MachampEvosAttacks:
	db 0 ; no more evolutions
	db 1, LOW_KICK
	db 1, LEER
	db 7, ROCK_THROW
	db 13, KARATE_CHOP
	db 19, SEISMIC_TOSS
	db 22, VITAL_THROW
	db 31, ROCK_SLIDE
	db 37, SUBMISSION
	db 43, SCARY_FACE
	db 49, CROSS_CHOP
	db 60, DYNAMICPUNCH
	db 0 ; no more level-up moves

BellsproutEvosAttacks:
	db EVOLVE_LEVEL, 16, WEEPINBELL
	db 0 ; no more evolutions
	db 1, VINE_WHIP
	db 6, ACID
	db 11, WRAP
	db 15, SLEEP_POWDER
	db 15, POISONPOWDER
	db 19, STUN_SPORE
	db 23, SWEET_SCENT
	db 30, GIGA_DRAIN
	db 37, RAZOR_LEAF
	db 45, SLUDGE_BOMB
	db 0 ; no more level-up moves

WeepinbellEvosAttacks:
	db EVOLVE_LEVEL, 31, VICTREEBEL
	db 0 ; no more evolutions
	db 1, VINE_WHIP
	db 1, ACID
	db 11, WRAP
	db 15, SLEEP_POWDER
	db 17, POISONPOWDER
	db 19, STUN_SPORE
	db 24, ACID
	db 33, GIGA_DRAIN
	db 42, RAZOR_LEAF
	db 54, SLUDGE_BOMB
	db 66, SOLARBEAM
	db 0 ; no more level-up moves

VictreebelEvosAttacks:
	db 0 ; no more evolutions
	db 1, VINE_WHIP
	db 1, ACID
	db 11, WRAP
	db 15, SLEEP_POWDER
	db 17, POISONPOWDER
	db 19, STUN_SPORE
	db 24, ACID
	db 33, GIGA_DRAIN
	db 42, RAZOR_LEAF
	db 50, LEECH_LIFE
	db 54, SLUDGE_BOMB
	db 66, SOLARBEAM
	db 0 ; no more level-up moves

TentacoolEvosAttacks:
	db EVOLVE_LEVEL, 30, TENTACRUEL
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 6, SUPERSONIC
	db 12, CONSTRICT
	db 19, ACID
	db 20, BUBBLEBEAM
	db 22, WRAP
	db 27, SLUDGE_BOMB
	db 31, ICE_BEAM
	db 36, BARRIER
	db 43, SCREECH
	db 49, HYDRO_PUMP
	db 0 ; no more level-up moves

TentacruelEvosAttacks:
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 6, SUPERSONIC
	db 12, CONSTRICT
	db 19, ACID
	db 20, BUBBLEBEAM
	db 22, WRAP
	db 27, SLUDGE_BOMB
	db 31, AURORA_BEAM
	db 36, BARRIER
	db 43, SCREECH
	db 49, HYDRO_PUMP
	db 0 ; no more level-up moves

GeodudeEvosAttacks:
	db EVOLVE_LEVEL, 25, GRAVELER
	db 0 ; no more evolutions
	db 1, TACKLE
	db 6, DEFENSE_CURL
	db 11, ROCK_THROW
	db 16, MAGNITUDE
	db 21, SELFDESTRUCT
	db 26, BODY_SLAM
	db 28, KARATE_CHOP
	db 31, ROCK_SLIDE
	db 36, EARTHQUAKE
	db 41, EXPLOSION
	db 0 ; no more level-up moves

GravelerEvosAttacks:
	db EVOLVE_LEVEL, 41, GOLEM
	db 0 ; no more evolutions
	db 1, TACKLE
	db 6, DEFENSE_CURL
	db 11, ROCK_THROW
	db 16, MAGNITUDE
	db 21, SELFDESTRUCT
	db 28, BODY_SLAM
	db 33, KARATE_CHOP
	db 35, ROCK_SLIDE
	db 40, EARTHQUAKE
	db 46, EXPLOSION
	db 0 ; no more level-up moves

GolemEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 6, DEFENSE_CURL
	db 11, ROCK_THROW
	db 16, MAGNITUDE
	db 21, SELFDESTRUCT
	db 28, BODY_SLAM
	db 33, KARATE_CHOP
	db 35, ROCK_SLIDE
	db 40, EARTHQUAKE
	db 46, EXPLOSION
	db 49, SUBMISSION
	db 0 ; no more level-up moves

PonytaEvosAttacks:
	db EVOLVE_LEVEL, 27, RAPIDASH
	db 0 ; no more evolutions
	db 1, TACKLE
	db 8, TAIL_WHIP
	db 9, FLAME_WHEEL
	db 13, STOMP
	db 20, ROLLING_KICK
	db 30, TAKE_DOWN
	db 32, FLAMETHROWER
	db 35, JUMP_KICK
	db 41, FIRE_BLAST
	db 0 ; no more level-up moves

RapidashEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 8, TAIL_WHIP
	db 9, FLAME_WHEEL
	db 13, STOMP
	db 20, ROLLING_KICK
	db 30, TAKE_DOWN
	db 34, FLAMETHROWER
	db 37, JUMP_KICK
	db 39, EARTHQUAKE
	db 42, FIRE_BLAST
	db 45, MEGAHORN
	db 0 ; no more level-up moves

SlowpokeEvosAttacks:
	db EVOLVE_LEVEL, 37, SLOWBRO
	db EVOLVE_ITEM, KINGS_ROCK, SLOWKING
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 5, CONFUSION
	db 10, DISABLE
	db 23, PSYBEAM
	db 26, BUBBLEBEAM
	db 28, SHADOW_BALL
	db 34, AURORA_BEAM
	db 41, PSYCHIC_M
	db 43, FUTURE_SIGHT
	db 55, HYDRO_PUMP
	db 0 ; no more level-up moves

SlowbroEvosAttacks:
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 5, CONFUSION
	db 10, DISABLE
	db 23, PSYBEAM
	db 26, BUBBLEBEAM
	db 28, SHADOW_BALL
	db 38, FLAMETHROWER
	db 38, ICE_BEAM
	db 41, PSYCHIC_M
	db 43, FUTURE_SIGHT
	db 55, HYDRO_PUMP
	db 0 ; no more level-up moves

MagnemiteEvosAttacks:
	db EVOLVE_LEVEL, 30, MAGNETON
	db 0 ; no more evolutions
	db 1, THUNDERSHOCK
	db 5, SUPERSONIC
	db 7, SCREECH
	db 10, THUNDER_WAVE
	db 12, SPARK
	db 17, SONICBOOM
	db 19, SELFDESTRUCT
	db 23, FLASH
	db 29, THUNDERBOLT
	db 48, ZAP_CANNON
	db 58, EXPLOSION
	db 0 ; no more level-up moves

MagnetonEvosAttacks:
	db 0 ; no more evolutions
	db 1, THUNDERSHOCK
	db 5, SUPERSONIC
	db 7, SCREECH
	db 10, THUNDER_WAVE
	db 12, SPARK
	db 17, SONICBOOM
	db 19, SELFDESTRUCT
	db 23, FLASH
	db 29, THUNDERBOLT
	db 30, TRI_ATTACK
	db 39, THUNDER
	db 48, ZAP_CANNON
	db 58, EXPLOSION
	db 0 ; no more level-up moves

FarfetchDEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 7, SAND_ATTACK
	db 13, LEER
	db 19, FURY_ATTACK
	db 23, KARATE_CHOP
	db 25, WING_ATTACK
	db 29, RAZOR_LEAF
	db 32, SLASH
	db 35, DRILL_PECK
	db 40, CROSS_CHOP
	db 51, SKY_ATTACK
	db 0 ; no more level-up moves

DoduoEvosAttacks:
	db EVOLVE_LEVEL, 27, DODRIO
	db 0 ; no more evolutions
	db 1, PECK
	db 1, SCREECH
	db 13, FURY_ATTACK
	db 21, WING_ATTACK
	db 25, DOUBLE_KICK
	db 33, DRILL_PECK
	db 37, DOUBLE_EDGE
	db 41, SKY_ATTACK
	db 0 ; no more level-up moves

DodrioEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 1, SCREECH
	db 13, FURY_ATTACK
	db 21, WING_ATTACK
	db 25, DOUBLE_KICK
	db 27, TRI_ATTACK
	db 33, DRILL_PECK
	db 36, TRIPLE_KICK
	db 37, DOUBLE_EDGE
	db 43, SKY_ATTACK
	db 0 ; no more level-up moves

SeelEvosAttacks:
	db EVOLVE_LEVEL, 34, DEWGONG
	db 0 ; no more evolutions
	db 1, HEADBUTT
	db 5, CHARM
	db 10, AURORA_BEAM
	db 14, BUBBLEBEAM
	db 30, ENCORE
	db 36, DRILL_PECK
	db 37, ICE_BEAM
	db 48, SAFEGUARD
	db 52, BLIZZARD
	db 0 ; no more level-up moves

DewgongEvosAttacks:
	db 0 ; no more evolutions
	db 1, HEADBUTT
	db 5, CHARM
	db 10, AURORA_BEAM
	db 14, BUBBLEBEAM
	db 30, ENCORE
	db 39, DRILL_PECK
	db 40, ICE_BEAM
	db 50, SAFEGUARD
	db 60, BLIZZARD
	db 0 ; no more level-up moves

GrimerEvosAttacks:
	db EVOLVE_LEVEL, 35, MUK
	db 0 ; no more evolutions
	db 1, TOXIC
	db 1, ACID
	db 5, HARDEN
	db 10, DISABLE
	db 16, SLUDGE_BOMB
	db 23, MINIMIZE
	db 66, THIEF
	db 31, SCREECH
	db 35, EXPLOSION
	db 40, ACID_ARMOR
	db 50, SLUDGE
	db 0 ; no more level-up moves

MukEvosAttacks:
	db 0 ; no more evolutions
	db 1, TOXIC
	db 1, ACID
	db 5, HARDEN
	db 10, DISABLE
	db 16, SLUDGE_BOMB
	db 23, MINIMIZE
	db 66, THIEF
	db 31, SCREECH
	db 35, EXPLOSION
	db 40, ACID_ARMOR
	db 50, SLUDGE
	db 0 ; no more level-up moves

ShellderEvosAttacks:
	db EVOLVE_LEVEL, 22, CLOYSTER
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, WITHDRAW
	db 9, CONFUSE_RAY
	db 14, CLAMP
	db 16, AURORA_BEAM
	db 20, BUBBLEBEAM
	db 22, PROTECT
	db 41, ICE_BEAM
	db 49, HYDRO_PUMP
	db 51, BLIZZARD
	db 0 ; no more level-up moves

CloysterEvosAttacks:
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, WITHDRAW
	db 9, CONFUSE_RAY
	db 14, CLAMP
	db 16, AURORA_BEAM
	db 20, BUBBLEBEAM
	db 22, PROTECT
	db 33, SPIKES
	db 35, CLAMP
	db 41, RAPID_SPIN
	db 42, ICE_BEAM
	db 49, HYDRO_PUMP
	db 50, SPIKE_CANNON
	db 51, BLIZZARD
	db 54, EXPLOSION
	db 0 ; no more level-up moves

GastlyEvosAttacks:
	db EVOLVE_LEVEL, 25, HAUNTER
	db 0 ; no more evolutions
	db 1, HYPNOSIS
	db 1, LICK
	db 8, SPITE
	db 13, MEAN_LOOK
	db 16, CURSE
	db 21, NIGHT_SHADE
	db 25, SHADOW_BALL
	db 28, SLUDGE_BOMB
	db 31, CONFUSE_RAY
	db 39, DREAM_EATER
	db 41, PSYCHIC_M
	db 48, DESTINY_BOND
	db 0 ; no more level-up moves

HaunterEvosAttacks:
	db EVOLVE_LEVEL, 52, GENGAR
	db 0 ; no more evolutions
	db 1, HYPNOSIS
	db 1, LICK
	db 8, SPITE
	db 13, MEAN_LOOK
	db 16, CURSE
	db 21, NIGHT_SHADE
	db 25, SHADOW_BALL
	db 28, SLUDGE_BOMB
	db 31, CONFUSE_RAY
	db 39, DREAM_EATER
	db 41, PSYCHIC_M
	db 48, DESTINY_BOND
	db 0 ; no more level-up moves

GengarEvosAttacks:
	db 0 ; no more evolutions
	db 1, HYPNOSIS
	db 1, LICK
	db 8, SPITE
	db 13, MEAN_LOOK
	db 16, CURSE
	db 21, NIGHT_SHADE
	db 25, SHADOW_BALL
	db 28, SLUDGE_BOMB
	db 31, CONFUSE_RAY
	db 39, DREAM_EATER
	db 41, PSYCHIC_M
	db 48, DESTINY_BOND
	db 0 ; no more level-up moves

OnixEvosAttacks:
	db EVOLVE_ITEM, METAL_COAT, STEELIX
	db 0 ; no more evolutions
	db 1, BIND
	db 1, ROCK_THROW
	db 5, SCREECH
	db 12, DRAGONBREATH
	db 16, SCARY_FACE
	db 20, MAGNITUDE
	db 28, IRON_TAIL
	db 31, DIG
	db 34, ROCK_SLIDE
	db 37, SELFDESTRUCT
	db 41, DOUBLE_EDGE
	db 48, EARTHQUAKE
	db 51, EXPLOSION
	db 0 ; no more level-up moves

DrowzeeEvosAttacks:
	db EVOLVE_LEVEL, 26, HYPNO
	db 0 ; no more evolutions
	db 1, PSYBEAM
	db 1, HYPNOSIS
	db 10, DISABLE
	db 13, FAINT_ATTACK
	db 16, THUNDERPUNCH
	db 21, DREAM_EATER
	db 23, THUNDER_WAVE
	db 25, SHADOW_BALL
	db 31, POISON_GAS
	db 36, SUBMISSION
	db 40, PSYCHIC_M
	db 66, THIEF
	db 46, PSYCH_UP
	db 49, FUTURE_SIGHT
	db 0 ; no more level-up moves

HypnoEvosAttacks:
	db 0 ; no more evolutions
	db 1, PSYBEAM
	db 1, HYPNOSIS
	db 10, DISABLE
	db 13, FAINT_ATTACK
	db 16, THUNDERPUNCH
	db 21, DREAM_EATER
	db 25, SHADOW_BALL
	db 31, POISON_GAS
	db 36, SUBMISSION
	db 40, PSYCHIC_M
	db 66, THIEF
	db 46, PSYCH_UP
	db 49, FUTURE_SIGHT
	db 55, NIGHTMARE
	db 0 ; no more level-up moves

KrabbyEvosAttacks:
	db EVOLVE_LEVEL, 22, KINGLER
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 1, LEER
	db 9, VICEGRIP
	db 14, DIG
	db 16, HARDEN
	db 20, SUBMISSION
	db 23, STOMP
	db 27, GUILLOTINE
	db 41, PROTECT
	db 49, DOUBLE_EDGE
	db 51, CRABHAMMER
	db 0 ; no more level-up moves

KinglerEvosAttacks:
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 1, LEER
	db 9, VICEGRIP
	db 16, HARDEN
	db 20, SUBMISSION
	db 22, STOMP
	db 27, GUILLOTINE
	db 35, CLAMP
	db 41, PROTECT
	db 42, DIG
	db 49, FURY_CUTTER
	db 50, CROSS_CHOP
	db 51, DOUBLE_EDGE
	db 54, CRABHAMMER
	db 0 ; no more level-up moves

VoltorbEvosAttacks:
	db EVOLVE_LEVEL, 30, ELECTRODE
	db 0 ; no more evolutions
	db 1, SPARK
	db 9, SCREECH
	db 17, SONICBOOM
	db 23, SELFDESTRUCT
	db 24, THUNDERBOLT
	db 29, ROLLOUT
	db 31, THUNDER_WAVE
	db 33, LIGHT_SCREEN
	db 37, SWIFT
	db 38, THUNDER
	db 39, EXPLOSION
	db 41, MIRROR_COAT
	db 0 ; no more level-up moves

ElectrodeEvosAttacks:
	db 0 ; no more evolutions
	db 1, SPARK
	db 9, SCREECH
	db 17, SONICBOOM
	db 23, SELFDESTRUCT
	db 24, THUNDERBOLT
	db 29, ROLLOUT
	db 34, LIGHT_SCREEN
	db 40, SWIFT
	db 41, THUNDER
	db 44, EXPLOSION
	db 48, MIRROR_COAT
	db 0 ; no more level-up moves

ExeggcuteEvosAttacks:
	db EVOLVE_LEVEL, 28, EXEGGUTOR
	db 0 ; no more evolutions
	db 1, CONFUSION
	db 1, SLEEP_POWDER
	db 7, MEGA_DRAIN
	db 23, PSYBEAM
	db 28, STUN_SPORE
	db 36, GIGA_DRAIN
	db 43, PSYCHIC_M
	db 48, EGG_BOMB
	db 55, SOLARBEAM
	db 0 ; no more level-up moves

ExeggutorEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONFUSION
	db 1, SLEEP_POWDER
	db 7, MEGA_DRAIN
	db 23, PSYBEAM
	db 28, STUN_SPORE
	db 36, GIGA_DRAIN
	db 43, PSYCHIC_M
	db 48, EGG_BOMB
	db 55, SOLARBEAM
	db 0 ; no more level-up moves

CuboneEvosAttacks:
	db EVOLVE_LEVEL, 21, MAROWAK
	db 0 ; no more evolutions
	db 1, POUND
	db 5, TAIL_WHIP
	db 9, BONE_CLUB
	db 13, HEADBUTT
	db 17, SCARY_FACE
	db 19, ROCK_SLIDE
	db 22, BONE_RUSH
	db 29, SHADOW_BALL
	db 33, SUBMISSION
	db 37, DOUBLE_EDGE
	db 41, BONEMERANG
	db 0 ; no more level-up moves

MarowakEvosAttacks:
	db 0 ; no more evolutions
	db 1, POUND
	db 5, TAIL_WHIP
	db 9, BONE_CLUB
	db 13, HEADBUTT
	db 17, SCARY_FACE
	db 21, ROCK_SLIDE
	db 25, BONE_RUSH
	db 29, SHADOW_BALL
	db 33, SUBMISSION
	db 37, DOUBLE_EDGE
	db 41, BONEMERANG
	db 0 ; no more level-up moves

HitmonleeEvosAttacks:
	db 0 ; no more evolutions
	db 20, FOCUS_ENERGY
	db 23, KARATE_CHOP
	db 25, ROLLING_KICK
	db 27, LOW_KICK
	db 30, DOUBLE_EDGE
	db 36, SUBMISSION
	db 38, FLAME_WHEEL
	db 40, MEGA_KICK
	db 42, JUMP_KICK
	db 44, ENDURE
	db 47, REVERSAL
	db 50, HI_JUMP_KICK
	db 0 ; no more level-up moves

HitmonchanEvosAttacks:
	db 0 ; no more evolutions
	db 20, MACH_PUNCH
	db 23, PURSUIT
	db 25, COMET_PUNCH
	db 27, DIZZY_PUNCH
	db 30, KARATE_CHOP
	db 36, SUBMISSION
	db 39, MEGA_PUNCH
	db 42, ROCK_SLIDE
	db 44, DETECT
	db 47, COUNTER
	db 50, CROSS_CHOP
	db 0 ; no more level-up moves

LickitungEvosAttacks:
	db 0 ; no more evolutions
	db 1, LICK
	db 7, SUPERSONIC
	db 13, DEFENSE_CURL
	db 19, STOMP
	db 25, WRAP
	db 31, DISABLE
	db 37, BODY_SLAM
	db 39, SCREECH
	db 42, RECOVER
	db 50, EXPLOSION
	db 0 ; no more level-up moves

KoffingEvosAttacks:
	db EVOLVE_LEVEL, 35, WEEZING
	db 0 ; no more evolutions
	db 1, POISON_GAS
	db 9, SMOG
	db 11, RAPID_SPIN
	db 17, SELFDESTRUCT
	db 21, SLUDGE_BOMB
	db 25, SMOKESCREEN
	db 33, HAZE
	db 35, PAIN_SPLIT
	db 40, FLAME_WHEEL
	db 44, SLUDGE
	db 49, EXPLOSION
	db 51, DESTINY_BOND
	db 0 ; no more level-up moves

WeezingEvosAttacks:
	db 0 ; no more evolutions
	db 1, POISON_GAS
	db 9, SMOG
	db 11, RAPID_SPIN
	db 17, SELFDESTRUCT
	db 21, SLUDGE_BOMB
	db 25, SMOKESCREEN
	db 33, HAZE
	db 35, PAIN_SPLIT
	db 40, FLAME_WHEEL
	db 44, SLUDGE
	db 49, EXPLOSION
	db 51, DESTINY_BOND
	db 0 ; no more level-up moves

RhyhornEvosAttacks:
	db EVOLVE_LEVEL, 42, RHYDON
	db 0 ; no more evolutions
	db 1, HORN_ATTACK
	db 1, MAGNITUDE
	db 8, STOMP
	db 13, ROCK_THROW
	db 19, HEADBUTT
	db 22, ROCK_SLIDE
	db 33, HORN_DRILL
	db 41, SCARY_FACE
	db 46, EARTHQUAKE
	db 49, MEGAHORN
	db 0 ; no more level-up moves

RhydonEvosAttacks:
	db 0 ; no more evolutions
	db 1, HORN_ATTACK
	db 1, MAGNITUDE
	db 8, STOMP
	db 13, ROCK_THROW
	db 19, HEADBUTT
	db 22, ROCK_SLIDE
	db 33, HORN_DRILL
	db 41, SCARY_FACE
	db 46, EARTHQUAKE
	db 49, MEGAHORN
	db 0 ; no more level-up moves

ChanseyEvosAttacks:
	db EVOLVE_ITEM, LUCKY_EGG, BLISSEY
	db 0 ; no more evolutions
	db 1, DOUBLESLAP
	db 13, SOFTBOILED
	db 23, MINIMIZE
	db 29, LOVELY_KISS
	db 35, EGG_BOMB
	db 57, HEAL_BELL
	db 0 ; no more level-up moves

TangelaEvosAttacks:
	db 0 ; no more evolutions
	db 1, VINE_WHIP
	db 13, BIND
	db 25, POISONPOWDER
	db 31, GIGA_DRAIN
	db 34, STUN_SPORE
	db 43, ANCIENTPOWER
	db 49, SYNTHESIS
	db 55, SOLARBEAM
	db 61, FIRE_BLAST
	db 0 ; no more level-up moves

KangaskhanEvosAttacks:
	db 0 ; no more evolutions
	db 1, COMET_PUNCH
	db 19, BODY_SLAM
	db 25, MEGA_PUNCH
	db 31, SUBMISSION
	db 37, EARTHQUAKE
	db 43, HI_JUMP_KICK
	db 65, DOUBLE_EDGE
	db 0 ; no more level-up moves

HorseaEvosAttacks:
	db EVOLVE_LEVEL, 23, SEADRA
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, SMOKESCREEN
	db 12, LEER
	db 19, TWISTER
	db 22, AURORA_BEAM
	db 25, OCTAZOOKA
	db 26, SAFEGUARD
	db 40, DRAGONBREATH
	db 42, ICE_BEAM
	db 51, HYDRO_PUMP
	db 0 ; no more level-up moves

SeadraEvosAttacks:
	db EVOLVE_ITEM, DRAGON_SCALE, KINGDRA
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, SMOKESCREEN
	db 12, LEER
	db 19, TWISTER
	db 22, AURORA_BEAM
	db 25, OCTAZOOKA
	db 26, SAFEGUARD
	db 40, DRAGONBREATH
	db 42, ICE_BEAM
	db 51, HYDRO_PUMP
	db 0 ; no more level-up moves

GoldeenEvosAttacks:
	db EVOLVE_LEVEL, 21, SEAKING
	db 0 ; no more evolutions
	db 1, PECK
	db 1, TAIL_WHIP
	db 10, SUPERSONIC
	db 15, HORN_ATTACK
	db 18, WATERFALL
	db 22, FLAIL
	db 25, DRILL_PECK
	db 29, FURY_ATTACK
	db 31, ICE_BEAM
	db 38, MEGAHORN
	db 43, HORN_DRILL
	db 52, HYDRO_PUMP
	db 54, BLIZZARD
	db 0 ; no more level-up moves

SeakingEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 1, TAIL_WHIP
	db 10, SUPERSONIC
	db 15, HORN_ATTACK
	db 18, WATERFALL
	db 22, FLAIL
	db 25, DRILL_PECK
	db 29, FURY_ATTACK
	db 31, ICE_BEAM
	db 38, MEGAHORN
	db 43, HORN_DRILL
	db 52, HYDRO_PUMP
	db 54, BLIZZARD
	db 0 ; no more level-up moves

StaryuEvosAttacks:
	db EVOLVE_LEVEL, 52, STARMIE
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 13, RAPID_SPIN
	db 19, RECOVER
	db 25, SWIFT
	db 31, BUBBLEBEAM
	db 37, ICE_BEAM
	db 48, HYDRO_PUMP
	db 0 ; no more level-up moves

StarmieEvosAttacks:
	db 0 ; no more evolutions
	db 1, RAPID_SPIN
	db 19, RECOVER
	db 37, ICE_BEAM
	db 48, HYDRO_PUMP
	db 52, PSYCHIC_M
	db 55, THUNDERBOLT
	db 0 ; no more level-up moves

MrMimeEvosAttacks:
	db 0 ; no more evolutions
	db 1, BARRIER
	db 6, CONFUSION
	db 11, SUBSTITUTE
	db 21, DOUBLESLAP
	db 26, LIGHT_SCREEN
	db 26, REFLECT
	db 31, ENCORE
	db 36, PSYBEAM
	db 41, BATON_PASS
	db 46, SAFEGUARD
	db 0 ; no more level-up moves

ScytherEvosAttacks:
	db EVOLVE_ITEM, METAL_COAT, SCIZOR
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, LEER
	db 6, FOCUS_ENERGY
	db 12, PURSUIT
	db 18, FALSE_SWIPE
	db 22, FURY_CUTTER
	db 24, WING_ATTACK
	db 36, SLASH
	db 52, SKY_ATTACK
	db 58, DOUBLE_TEAM
	db 0 ; no more level-up moves

JynxEvosAttacks:
	db 0 ; no more evolutions
	db 1, SWEET_KISS
	db 7, LICK
	db 13, POWDER_SNOW
	db 19, PSYBEAM
	db 25, SING
	db 31, AURORA_BEAM
	db 37, PERISH_SONG
	db 40, ICE_BEAM
	db 42, PSYCHIC_M
	db 49, DESTINY_BOND
	db 0 ; no more level-up moves

ElectabuzzEvosAttacks:
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, LEER
	db 13, THUNDERPUNCH
	db 19, ICE_PUNCH
	db 25, SWIFT
	db 31, SCREECH
	db 37, THUNDERBOLT
	db 43, THUNDER
	db 49, CROSS_CHOP	
	db 0 ; no more level-up moves

MagmarEvosAttacks:
	db 0 ; no more evolutions
	db 1, EMBER
	db 7, LEER
	db 13, SMOG
	db 19, FIRE_PUNCH
	db 25, SMOKESCREEN
	db 31, THUNDERBOLT
	db 37, FLAMETHROWER
	db 43, CONFUSE_RAY
	db 49, FIRE_BLAST
	db 0 ; no more level-up moves

PinsirEvosAttacks:
	db 0 ; no more evolutions
	db 1, VICEGRIP
	db 7, FOCUS_ENERGY
	db 13, SCARY_FACE
	db 19, SEISMIC_TOSS
	db 25, VITAL_THROW
	db 27, FURY_CUTTER
	db 31, GUILLOTINE
	db 37, SUBMISSION
	db 40, WING_ATTACK
	db 46, MEGAHORN
	db 0 ; no more level-up moves

TaurosEvosAttacks:
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 4, TAIL_WHIP
	db 13, HORN_ATTACK
	db 19, SCARY_FACE
	db 30, HEADBUTT
	db 34, SUBMISSION
	db 43, THRASH
	db 44, IRON_TAIL
	db 50, MEGAHORN
	db 53, DOUBLE_EDGE
	db 0 ; no more level-up moves

MagikarpEvosAttacks:
	db EVOLVE_LEVEL, 30, GYARADOS
	db 0 ; no more evolutions
	db 1, SPLASH
	db 15, TACKLE
	db 30, FLAIL
	db 0 ; no more level-up moves

GyaradosEvosAttacks:
	db 0 ; no more evolutions
	db 1, THRASH
	db 30, BITE
	db 32, DRAGON_RAGE
	db 38, ICY_WIND
	db 35, WATERFALL
	db 38, TAKE_DOWN
	db 42, ICE_BEAM
	db 45, HYDRO_PUMP
	db 49, DOUBLE_EDGE
	db 55, EARTHQUAKE
	db 66, HYPER_BEAM
	db 0 ; no more level-up moves

LaprasEvosAttacks:
	db 0 ; no more evolutions
	db 1, SING
	db 8, MIST
	db 15, BODY_SLAM
	db 22, CONFUSE_RAY
	db 29, PERISH_SONG
	db 36, ICE_BEAM
	db 43, PSYCHIC_M
	db 48, THUNDERBOLT
	db 50, SAFEGUARD
	db 57, HYDRO_PUMP
	db 64, ANCIENTPOWER
	db 0 ; no more level-up moves

DittoEvosAttacks:
	db 0 ; no more evolutions
	db 1, TRANSFORM
	db 0 ; no more level-up moves

EeveeEvosAttacks:
	db EVOLVE_ITEM, THUNDERSTONE, JOLTEON
	db EVOLVE_ITEM, WATER_STONE, VAPOREON
	db EVOLVE_ITEM, FIRE_STONE, FLAREON
	db EVOLVE_ITEM, SUN_STONE, ESPEON
	db EVOLVE_ITEM, MOON_STONE, UMBREON
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, GROWL
	db 5, SAND_ATTACK
	db 15, BITE
	db 22, SWIFT
	db 33, BATON_PASS
	db 45, TAKE_DOWN
	db 49, CHARM
	db 52, DOUBLE_EDGE
	db 0 ; no more level-up moves

VaporeonEvosAttacks:
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, GROWL
	db 5, SAND_ATTACK
	db 15, BITE
	db 22, SWIFT
	db 29, BUBBLEBEAM
	db 33, HAZE
	db 37, RECOVER
	db 41, ICY_WIND
	db 45, WHIRLPOOL
	db 49, ACID_ARMOR
	db 52, HYDRO_PUMP
	db 0 ; no more level-up moves

JolteonEvosAttacks:
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, GROWL
	db 5, SAND_ATTACK
	db 15, BITE
	db 22, SWIFT
	db 29, SPARK
	db 33, THUNDER_WAVE
	db 37, THUNDERBOLT
	db 41, THUNDER
	db 45, PIN_MISSILE
	db 49, SHADOW_BALL
	db 52, SING
	db 0 ; no more level-up moves

FlareonEvosAttacks:
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, GROWL
	db 5, SAND_ATTACK
	db 15, BITE
	db 22, SWIFT
	db 29, FLAMETHROWER
	db 33, FLAME_WHEEL
	db 37, SUBMISSION
	db 41, SHADOW_BALL
	db 45, SWORDS_DANCE
	db 49, EARTHQUAKE
	db 52, DOUBLE_EDGE
	db 0 ; no more level-up moves

PorygonEvosAttacks:
	db EVOLVE_ITEM, UP_GRADE, PORYGON2
	db 0 ; no more evolutions
	db 1, CONVERSION
	db 11, TRI_ATTACK
	db 13, CONFUSE_RAY
	db 19, AGILITY
	db 22, ICE_BEAM
	db 35, RECOVER
	db 41, THUNDERBOLT
	db 50, SHARPEN
	db 52, TRI_ATTACK
	db 64, ZAP_CANNON
	db 0 ; no more level-up moves

OmanyteEvosAttacks:
	db EVOLVE_LEVEL, 38, OMASTAR
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 1, HARDEN
	db 9, AURORA_BEAM
	db 11, BUBBLEBEAM
	db 14, ROCK_SLIDE
	db 22, CRUNCH
	db 28, PROTECT
	db 37, GIGA_DRAIN
	db 46, ICE_BEAM
	db 55, ANCIENTPOWER
	db 62, SPIKES
	db 0 ; no more level-up moves

OmastarEvosAttacks:
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 1, HARDEN
	db 9, AURORA_BEAM
	db 11, BUBBLEBEAM
	db 14, ROCK_SLIDE
	db 22, CRUNCH
	db 28, PROTECT
	db 37, GIGA_DRAIN
	db 46, ICE_BEAM
	db 55, ANCIENTPOWER
	db 62, SPIKES
	db 0 ; no more level-up moves

KabutoEvosAttacks:
	db EVOLVE_LEVEL, 38, KABUTOPS
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, HARDEN
	db 9, MEGA_DRAIN
	db 11, BUBBLEBEAM
	db 14, ROCK_THROW
	db 22, DIG
	db 28, SLASH
	db 37, ROCK_SLIDE
	db 46, FURY_CUTTER
	db 55, ANCIENTPOWER
	db 62, CRABHAMMER
	db 0 ; no more level-up moves

KabutopsEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, HARDEN
	db 9, MEGA_DRAIN
	db 11, BUBBLEBEAM
	db 14, ROCK_THROW
	db 22, DIG
	db 28, SLASH
	db 37, ROCK_SLIDE
	db 46, FURY_CUTTER
	db 55, ANCIENTPOWER
	db 62, CRABHAMMER
	db 0 ; no more level-up moves

AerodactylEvosAttacks:
	db 0 ; no more evolutions
	db 1, WING_ATTACK
	db 8, SUPERSONIC
	db 15, BITE
	db 22, SCREECH
	db 39, ANCIENTPOWER
	db 46, SCARY_FACE
	db 53, ROCK_SLIDE
	db 75, HYPER_BEAM
	db 0 ; no more level-up moves

SnorlaxEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 8, AMNESIA
	db 15, DEFENSE_CURL
	db 29, HEADBUTT
	db 36, SNORE
	db 43, BODY_SLAM
	db 50, ROLLOUT
	db 52, DOUBLE_EDGE
	db 66, REST
	db 0 ; no more level-up moves

ArticunoEvosAttacks:
	db 0 ; no more evolutions
	db 1, GUST
	db 1, POWDER_SNOW
	db 13, MIST
	db 25, AGILITY
	db 37, MIND_READER
	db 49, ICE_BEAM
	db 61, REFLECT
	db 73, BLIZZARD
	db 0 ; no more level-up moves

ZapdosEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 1, THUNDERSHOCK
	db 13, THUNDER_WAVE
	db 25, AGILITY
	db 37, DETECT
	db 49, DRILL_PECK
	db 61, LIGHT_SCREEN
	db 73, THUNDER
	db 0 ; no more level-up moves

MoltresEvosAttacks:
	db 0 ; no more evolutions
	db 1, WING_ATTACK
	db 1, EMBER
	db 13, FIRE_SPIN
	db 25, AGILITY
	db 37, ENDURE
	db 49, FLAMETHROWER
	db 61, SAFEGUARD
	db 73, SKY_ATTACK
	db 0 ; no more level-up moves

DratiniEvosAttacks:
	db EVOLVE_LEVEL, 30, DRAGONAIR
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, LEER
	db 8, THUNDER_WAVE
	db 15, TWISTER
	db 22, DRAGON_RAGE
	db 29, SLAM
	db 36, AGILITY
	db 43, SAFEGUARD
	db 50, OUTRAGE
	db 57, HYPER_BEAM
	db 0 ; no more level-up moves

DragonairEvosAttacks:
	db EVOLVE_LEVEL, 55, DRAGONITE
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, LEER
	db 1, THUNDER_WAVE
	db 1, TWISTER
	db 8, THUNDER_WAVE
	db 15, TWISTER
	db 22, DRAGON_RAGE
	db 29, SLAM
	db 38, AGILITY
	db 47, SAFEGUARD
	db 56, OUTRAGE
	db 65, HYPER_BEAM
	db 0 ; no more level-up moves

DragoniteEvosAttacks:
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, LEER
	db 1, THUNDER_WAVE
	db 1, TWISTER
	db 8, THUNDER_WAVE
	db 15, TWISTER
	db 22, DRAGON_RAGE
	db 29, SLAM
	db 38, AGILITY
	db 47, SAFEGUARD
	db 55, WING_ATTACK
	db 61, OUTRAGE
	db 75, HYPER_BEAM
	db 0 ; no more level-up moves

MewtwoEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONFUSION
	db 1, DISABLE
	db 11, BARRIER
	db 22, SWIFT
	db 33, PSYCH_UP
	db 44, FUTURE_SIGHT
	db 55, MIST
	db 66, PSYCHIC_M
	db 77, AMNESIA
	db 88, RECOVER
	db 99, SAFEGUARD
	db 0 ; no more level-up moves

MewEvosAttacks:
	db 0 ; no more evolutions
	db 1, TRANSFORM
	db 1, METRONOME
	db 0 ; no more level-up moves

ChikoritaEvosAttacks:
	db EVOLVE_LEVEL, 16, BAYLEEF
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, MEGA_DRAIN
	db 8, WRAP
	db 12, RAZOR_LEAF
	db 15, SYNTHESIS
	db 17, STUN_SPORE
	db 18, HEADBUTT
	db 24, GIGA_DRAIN
	db 30, SAFEGUARD
	db 36, LOVELY_KISS
	db 42, SOLARBEAM
	db 44, POISONPOWDER
	db 52, PETAL_DANCE
	db 0 ; no more level-up moves

BayleefEvosAttacks:
	db EVOLVE_LEVEL, 32, MEGANIUM
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, MEGA_DRAIN
	db 8, WRAP
	db 12, RAZOR_LEAF
	db 15, SYNTHESIS
	db 17, STUN_SPORE
	db 18, HEADBUTT
	db 24, GIGA_DRAIN
	db 30, SAFEGUARD
	db 38, LOVELY_KISS
	db 44, SOLARBEAM
	db 48, POISONPOWDER
	db 54, PETAL_DANCE
	db 0 ; no more level-up moves

MeganiumEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, MEGA_DRAIN
	db 8, WRAP
	db 12, RAZOR_LEAF
	db 15, SYNTHESIS
	db 17, STUN_SPORE
	db 18, HEADBUTT
	db 24, GIGA_DRAIN
	db 30, SAFEGUARD
	db 38, LOVELY_KISS
	db 45, SOLARBEAM
	db 50, POISONPOWDER
	db 56, PETAL_DANCE
	db 0 ; no more level-up moves

CyndaquilEvosAttacks:
	db EVOLVE_LEVEL, 16, QUILAVA
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, SMOKESCREEN
	db 1, EMBER
	db 8, SMOG
	db 12, ROLLOUT
	db 15, FLAME_WHEEL
	db 17, FURY_CUTTER
	db 18, HEADBUTT
	db 24, FIRE_SPIN
	db 30, FLAMETHROWER
	db 36, SUBMISSION
	db 42, SOLARBEAM
	db 44, EARTHQUAKE
	db 52, FIRE_BLAST
	db 0 ; no more level-up moves

QuilavaEvosAttacks:
	db EVOLVE_LEVEL, 32, TYPHLOSION
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, SMOKESCREEN
	db 1, EMBER
	db 8, SMOG
	db 12, ROLLOUT
	db 15, FLAME_WHEEL
	db 17, FURY_CUTTER
	db 18, HEADBUTT
	db 24, FIRE_SPIN
	db 30, FLAMETHROWER
	db 38, SUBMISSION
	db 44, SOLARBEAM
	db 48, EARTHQUAKE
	db 54, FIRE_BLAST
	db 0 ; no more level-up moves

TyphlosionEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, SMOKESCREEN
	db 1, EMBER
	db 8, SMOG
	db 12, ROLLOUT
	db 15, FLAME_WHEEL
	db 17, FURY_CUTTER
	db 18, HEADBUTT
	db 24, FIRE_SPIN
	db 30, FLAMETHROWER
	db 38, SUBMISSION
	db 45, SOLARBEAM
	db 50, EARTHQUAKE
	db 56, FIRE_BLAST
	db 0 ; no more level-up moves

TotodileEvosAttacks:
	db EVOLVE_LEVEL, 16, CROCONAW
	db 0 ; no more evolutions
	db 1, POUND
	db 1, LEER
	db 1, WATER_GUN
	db 8, BITE
	db 12, SEISMIC_TOSS
	db 15, ICE_PUNCH
	db 17, BUBBLEBEAM
	db 18, HEADBUTT
	db 24, WATERFALL
	db 30, SUBMISSION
	db 36, SCARY_FACE
	db 42, EARTHQUAKE
	db 44, ROCK_SLIDE
	db 52, HYDRO_PUMP
	db 0 ; no more level-up moves

CroconawEvosAttacks:
	db EVOLVE_LEVEL, 32, FERALIGATR
	db 0 ; no more evolutions
	db 1, POUND
	db 1, LEER
	db 1, WATER_GUN
	db 8, BITE
	db 12, SEISMIC_TOSS
	db 15, ICE_PUNCH
	db 17, BUBBLEBEAM
	db 18, HEADBUTT
	db 24, WATERFALL
	db 30, SUBMISSION
	db 38, SCARY_FACE
	db 44, EARTHQUAKE
	db 48, ROCK_SLIDE
	db 54, HYDRO_PUMP
	db 0 ; no more level-up moves

FeraligatrEvosAttacks:
	db 0 ; no more evolutions
	db 1, POUND
	db 1, LEER
	db 1, WATER_GUN
	db 8, BITE
	db 12, SEISMIC_TOSS
	db 15, ICE_PUNCH
	db 17, BUBBLEBEAM
	db 18, HEADBUTT
	db 24, WATERFALL
	db 30, SUBMISSION
	db 38, SCARY_FACE
	db 45, EARTHQUAKE
	db 50, ROCK_SLIDE
	db 56, HYDRO_PUMP
	db 0 ; no more level-up moves

SentretEvosAttacks:
	db EVOLVE_LEVEL, 15, FURRET
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 5, DEFENSE_CURL
	db 7, CHARM
	db 11, FURY_SWIPES
	db 16, LOVELY_KISS
	db 23, BODY_SLAM
	db 27, SHADOW_BALL
	db 31, SWIFT
	db 40, EXTREMESPEED
	db 44, SURF
	db 0 ; no more level-up moves

FurretEvosAttacks:
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 5, DEFENSE_CURL
	db 7, CHARM
	db 11, FURY_SWIPES
	db 16, LOVELY_KISS
	db 23, BODY_SLAM
	db 27, SHADOW_BALL
	db 31, SWIFT
	db 40, EXTREMESPEED
	db 44, SURF
	db 0 ; no more level-up moves

HoothootEvosAttacks:
	db EVOLVE_LEVEL, 20, NOCTOWL
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, GROWL
	db 6, FORESIGHT
	db 11, PECK
	db 13, HEADBUTT
	db 16, HYPNOSIS
	db 20, WING_ATTACK
	db 22, PSYBEAM
	db 28, NIGHT_SHADE
	db 34, PSYCHIC_M
	db 48, DREAM_EATER
	db 51, REFLECT
	db 51, LIGHT_SCREEN
	db 0 ; no more level-up moves

NoctowlEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, GROWL
	db 6, FORESIGHT
	db 11, PECK
	db 13, HEADBUTT
	db 16, HYPNOSIS
	db 20, WING_ATTACK
	db 22, PSYBEAM
	db 28, NIGHT_SHADE
	db 34, PSYCHIC_M
	db 48, DREAM_EATER
	db 51, REFLECT
	db 51, LIGHT_SCREEN
	db 0 ; no more level-up moves

LedybaEvosAttacks:
	db EVOLVE_LEVEL, 16, LEDIAN
	db 0 ; no more evolutions
	db 1, COMET_PUNCH
	db 8, SUPERSONIC
	db 10, PSYBEAM
	db 16, LIGHT_SCREEN
	db 16, REFLECT
	db 18, TOXIC
	db 20, GIGA_DRAIN
	db 23, BATON_PASS
	db 22, ENCORE
	db 31, SAFEGUARD
	db 0 ; no more level-up moves

LedianEvosAttacks:
	db 0 ; no more evolutions
	db 1, COMET_PUNCH
	db 8, SUPERSONIC
	db 16, LIGHT_SCREEN
	db 16, REFLECT
	db 22, MACH_PUNCH
	db 22, ENCORE
	db 24, SAFEGUARD
	db 28, GIGA_DRAIN
	db 40, PSYBEAM
	db 46, MEGA_PUNCH
	db 0 ; no more level-up moves

SpinarakEvosAttacks:
	db EVOLVE_LEVEL, 19, ARIADOS
	db 0 ; no more evolutions
	db 1, ACID
	db 5, LEECH_LIFE
	db 1, STRING_SHOT
	db 6, SCARY_FACE
	db 11, TOXIC
	db 17, NIGHT_SHADE
	db 22, SLUDGE_BOMB
	db 37, SPIDER_WEB
	db 45, PSYCHIC_M
	db 51, SLUDGE
	db 0 ; no more level-up moves

AriadosEvosAttacks:
	db 0 ; no more evolutions
	db 1, ACID
	db 1, STRING_SHOT
	db 6, SCARY_FACE
	db 11, TOXIC
	db 17, NIGHT_SHADE
	db 20, LEECH_LIFE
	db 22, SLUDGE_BOMB
	db 37, SPIDER_WEB
	db 45, PSYCHIC_M
	db 51, SLUDGE
	db 53, MEGAHORN
	db 0 ; no more level-up moves

CrobatEvosAttacks:
	db 0 ; no more evolutions
	db 1, LEECH_LIFE
	db 6, CONFUSE_RAY
	db 12, GIGA_DRAIN
	db 16, TOXIC
	db 19, WING_ATTACK
	db 26, SCREECH
	db 34, SLUDGE_BOMB
	db 36, MEAN_LOOK
	db 40, SCREECH
	db 46, HAZE
	db 54, SHADOW_BALL
	db 60, SUPER_FANG
	db 66, SKY_ATTACK
	db 0 ; no more level-up moves

ChinchouEvosAttacks:
	db EVOLVE_LEVEL, 27, LANTURN
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 1, CONFUSE_RAY
	db 5, WATER_GUN
	db 13, SPARK
	db 17, BUBBLEBEAM
	db 25, AURORA_BEAM
	db 32, THUNDER_WAVE
	db 39, THUNDER
	db 41, ICE_BEAM
	db 44, THUNDERBOLT
	db 53, HYDRO_PUMP
	db 0 ; no more level-up moves

LanturnEvosAttacks:
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 1, CONFUSE_RAY
	db 5, WATER_GUN
	db 13, SPARK
	db 17, BUBBLEBEAM
	db 25, AURORA_BEAM
	db 32, THUNDER_WAVE
	db 39, THUNDER
	db 41, ICE_BEAM
	db 44, THUNDERBOLT
	db 53, HYDRO_PUMP
	db 0 ; no more level-up moves

PichuEvosAttacks:
	db EVOLVE_LEVEL, 15, PIKACHU
	db 0 ; no more evolutions
	db 1, THUNDERSHOCK
	db 1, CHARM
	db 6, TAIL_WHIP
	db 8, THUNDER_WAVE
	db 11, SWEET_KISS
	db 24, FLY
	db 0 ; no more level-up moves

CleffaEvosAttacks:
	db EVOLVE_LEVEL, 15, CLEFAIRY
	db 0 ; no more evolutions
	db 1, POUND
	db 1, CHARM
	db 4, ENCORE
	db 8, SING
	db 13, SWEET_KISS
	db 0 ; no more level-up moves

IgglybuffEvosAttacks:
	db EVOLVE_LEVEL, 15, JIGGLYPUFF
	db 0 ; no more evolutions
	db 1, SING
	db 1, CHARM
	db 4, DEFENSE_CURL
	db 9, POUND
	db 14, SWEET_KISS
	db 0 ; no more level-up moves

TogepiEvosAttacks:
	db EVOLVE_LEVEL, 24, TOGETIC
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, CHARM
	db 5, THUNDER_WAVE
	db 7, METRONOME
	db 18, SWEET_KISS
	db 21, PSYWAVE
	db 29, ENCORE
	db 23, SAFEGUARD
	db 38, EGG_BOMB
	db 0 ; no more level-up moves

TogeticEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, CHARM
	db 7, METRONOME
	db 18, SWEET_KISS
	db 21, PSYWAVE
	db 29, ENCORE
	db 23, SAFEGUARD
	db 38, RAZOR_LEAF
	db 41, PSYCHIC_M
	db 45, TRI_ATTACK
	db 51, ANCIENTPOWER
	db 55, SOFTBOILED
	db 0 ; no more level-up moves

NatuEvosAttacks:
	db EVOLVE_LEVEL, 25, XATU
	db 0 ; no more evolutions
	db 1, PECK
	db 1, LEER
	db 11, PSYBEAM
	db 14, FAINT_ATTACK
	db 15, NIGHT_SHADE
	db 19, WING_ATTACK
	db 30, FUTURE_SIGHT
	db 36, CONFUSE_RAY
	db 42, PSYCHIC_M
	db 48, DRILL_PECK
	db 50, GIGA_DRAIN
	db 66, THIEF
	db 0 ; no more level-up moves

XatuEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 1, LEER
	db 11, PSYBEAM
	db 14, FAINT_ATTACK
	db 15, NIGHT_SHADE
	db 23, WING_ATTACK
	db 30, FUTURE_SIGHT
	db 36, CONFUSE_RAY
	db 42, PSYCHIC_M
	db 48, DRILL_PECK
	db 50, GIGA_DRAIN
	db 57, ANCIENTPOWER
	db 66, THIEF
	db 0 ; no more level-up moves

MareepEvosAttacks:
	db EVOLVE_LEVEL, 15, FLAAFFY
	db 0 ; no more evolutions
	db 1, THUNDERSHOCK
	db 1, HEADBUTT
	db 9, THUNDER_WAVE
	db 16, SPARK
	db 23, COTTON_SPORE
	db 30, THUNDERBOLT
	db 37, THUNDER
	db 0 ; no more level-up moves

FlaaffyEvosAttacks:
	db EVOLVE_LEVEL, 30, AMPHAROS
	db 0 ; no more evolutions
	db 1, HEADBUTT
	db 1, THUNDERSHOCK
	db 9, THUNDER_WAVE
	db 16, SPARK
	db 27, COTTON_SPORE
	db 32, FIRE_PUNCH
	db 36, THUNDERBOLT
	db 39, THUNDER
	db 0 ; no more level-up moves

AmpharosEvosAttacks:
	db 0 ; no more evolutions
	db 1, HEADBUTT
	db 1, THUNDERSHOCK
	db 9, THUNDER_WAVE
	db 18, SPARK
	db 27, COTTON_SPORE
	db 30, FIRE_PUNCH
	db 42, THUNDERBOLT
	db 57, THUNDER
	db 0 ; no more level-up moves

BellossomEvosAttacks:
	db 0 ; no more evolutions
	db 1, GIGA_DRAIN
	db 36, SOLARBEAM
	db 40, SYNTHESIS
	db 42, LEECH_SEED
	db 48, LOVELY_KISS
	db 61, PETAL_DANCE
	db 0 ; no more level-up moves

MarillEvosAttacks:
	db EVOLVE_LEVEL, 16, AZUMARILL
	db 0 ; no more evolutions
	db 1, CHARM
	db 3, SEISMIC_TOSS
	db 6, HEADBUTT
	db 10, BUBBLEBEAM
	db 15, ICE_PUNCH
	db 21, SUBMISSION
	db 28, DOUBLE_EDGE
	db 34, LOVELY_KISS
	db 36, BELLY_DRUM
	db 0 ; no more level-up moves

AzumarillEvosAttacks:
	db 0 ; no more evolutions
	db 1, CHARM
	db 3, SEISMIC_TOSS
	db 6, HEADBUTT
	db 10, BUBBLEBEAM
	db 15, ICE_PUNCH
	db 22, SUBMISSION
	db 30, DOUBLE_EDGE
	db 35, LOVELY_KISS
	db 40, BELLY_DRUM
	db 0 ; no more level-up moves

SudowoodoEvosAttacks:
	db 0 ; no more evolutions
	db 1, ROCK_THROW
	db 1, MIMIC
	db 10, FLAIL
	db 19, LOW_KICK
	db 28, ROCK_SLIDE
	db 37, EARTHQUAKE
	db 46, BODY_SLAM
	db 51, ANCIENTPOWER
	db 0 ; no more level-up moves

PolitoedEvosAttacks:
	db 0 ; no more evolutions
	db 1, BUBBLEBEAM
	db 1, HYPNOSIS
	db 32, ENCORE
	db 39, HYDRO_PUMP
	db 42, PERISH_SONG
	db 51, SWAGGER
	db 0 ; no more level-up moves

HoppipEvosAttacks:
	db EVOLVE_LEVEL, 16, SKIPLOOM
	db 0 ; no more evolutions
	db 1, SPLASH
	db 5, SYNTHESIS
	db 10, LEECH_SEED
	db 13, POISONPOWDER
	db 14, MEGA_DRAIN
	db 15, STUN_SPORE
	db 17, SLEEP_POWDER
	db 20, LEECH_SEED
	db 25, COTTON_SPORE
	db 31, GIGA_DRAIN
	db 38, EXPLOSION
	db 44, PETAL_DANCE
	db 0 ; no more level-up moves

SkiploomEvosAttacks:
	db EVOLVE_LEVEL, 27, JUMPLUFF
	db 0 ; no more evolutions
	db 1, SPLASH
	db 5, SYNTHESIS
	db 10, LEECH_SEED
	db 13, POISONPOWDER
	db 15, STUN_SPORE
	db 17, SLEEP_POWDER
	db 20, LEECH_SEED
	db 25, COTTON_SPORE
	db 31, GIGA_DRAIN
	db 38, EXPLOSION
	db 44, PETAL_DANCE
	db 0 ; no more level-up moves

JumpluffEvosAttacks:
	db 0 ; no more evolutions
	db 1, SPLASH
	db 5, SYNTHESIS
	db 10, LEECH_SEED
	db 13, POISONPOWDER
	db 15, STUN_SPORE
	db 17, SLEEP_POWDER
	db 20, LEECH_SEED
	db 25, COTTON_SPORE
	db 31, GIGA_DRAIN
	db 38, EXPLOSION
	db 44, PETAL_DANCE
	db 0 ; no more level-up moves

AipomEvosAttacks:
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, TAIL_WHIP
	db 6, DOUBLESLAP
	db 12, FURY_SWIPES
	db 18, SWIFT
	db 22, SUBMISSION
	db 25, SHADOW_BALL
	db 32, SCREECH
	db 39, BODY_SLAM
	db 46, SKY_ATTACK
	db 51, DOUBLE_EDGE
	db 0 ; no more level-up moves

SunkernEvosAttacks:
	db EVOLVE_LEVEL, 16, SUNFLORA
	db 0 ; no more evolutions
	db 1, ABSORB
	db 4, GROWTH
	db 10, MEGA_DRAIN
	db 31, SYNTHESIS
	db 46, GIGA_DRAIN
	db 0 ; no more level-up moves

SunfloraEvosAttacks:
	db 0 ; no more evolutions
	db 1, ABSORB
	db 1, POUND
	db 4, GROWTH
	db 10, RAZOR_LEAF
	db 24, GIGA_DRAIN
	db 31, PETAL_DANCE
	db 46, SOLARBEAM
	db 0 ; no more level-up moves

YanmaEvosAttacks:
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, FORESIGHT
	db 7, SONICBOOM
	db 13, DOUBLE_TEAM
	db 19, LEECH_LIFE
	db 21, WING_ATTACK
	db 25, DETECT
	db 31, GIGA_DRAIN
	db 36, ANCIENTPOWER
	db 37, FAINT_ATTACK
	db 43, SCREECH
	db 54, SKY_ATTACK
	db 0 ; no more level-up moves

WooperEvosAttacks:
	db EVOLVE_LEVEL, 20, QUAGSIRE
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, TAIL_WHIP
	db 5, MIST
	db 11, MAGNITUDE
	db 16, LOVELY_KISS
	db 21, BUBBLEBEAM
	db 23, EARTHQUAKE
	db 41, ROCK_SLIDE
	db 51, WATERFALL
	db 56, RECOVER
	db 0 ; no more level-up moves

QuagsireEvosAttacks:
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, TAIL_WHIP
	db 5, MIST
	db 11, MAGNITUDE
	db 16, LOVELY_KISS
	db 21, BUBBLEBEAM
	db 31, EARTHQUAKE
	db 41, ROCK_SLIDE
	db 51, WATERFALL
	db 56, RECOVER
	db 0 ; no more level-up moves

EspeonEvosAttacks:
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, GROWL
	db 5, SAND_ATTACK
	db 15, BITE
	db 22, SWIFT
	db 29, PSYBEAM
	db 33, CONFUSE_RAY
	db 37, PSYCHIC_M
	db 41, MORNING_SUN
	db 45, SOLARBEAM
	db 49, FUTURE_SIGHT
	db 52, DETECT
	db 0 ; no more level-up moves

UmbreonEvosAttacks:
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, GROWL
	db 5, SAND_ATTACK
	db 15, BITE
	db 22, SWIFT
	db 29, BODY_SLAM
	db 33, FAINT_ATTACK
	db 37, SHADOW_BALL
	db 41, CONFUSE_RAY
	db 45, CRUNCH
	db 49, MOONLIGHT
	db 52, TAIL_WHIP
	db 0 ; no more level-up moves

MurkrowEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 11, PURSUIT
	db 16, HAZE
	db 23, VITAL_THROW
	db 26, NIGHT_SHADE
	db 28, WING_ATTACK
	db 31, FAINT_ATTACK
	db 39, DRILL_PECK
	db 41, MEAN_LOOK
	db 49, DESTINY_BOND
	db 52, CRUNCH
	db 55, PERISH_SONG
	db 61, SKY_ATTACK
	db 0 ; no more level-up moves

SlowkingEvosAttacks:
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 5, CONFUSION
	db 10, DISABLE
	db 23, PSYBEAM
	db 26, BUBBLEBEAM
	db 28, SHADOW_BALL
	db 38, FLAMETHROWER
	db 38, ICE_BEAM
	db 41, PSYCHIC_M
	db 43, FUTURE_SIGHT
	db 55, HYDRO_PUMP
	db 0 ; no more level-up moves

MisdreavusEvosAttacks:
	db 0 ; no more evolutions
	db 1, PSYWAVE
	db 6, SPITE
	db 12, CONFUSE_RAY
	db 19, MEAN_LOOK
	db 27, PSYCHIC_M
	db 36, PAIN_SPLIT
	db 44, SHADOW_BALL
	db 46, PERISH_SONG
	db 0 ; no more level-up moves

UnownEvosAttacks:
	db 0 ; no more evolutions
	db 1, HIDDEN_POWER
	db 0 ; no more level-up moves

WobbuffetEvosAttacks:
	db 0 ; no more evolutions
	db 1, COUNTER
	db 1, MIRROR_COAT
	db 1, SAFEGUARD
	db 1, DESTINY_BOND
	db 0 ; no more level-up moves

GirafarigEvosAttacks:
	db 0 ; no more evolutions
	db 1, STOMP
	db 1, GROWL
	db 7, PSYBEAM
	db 16, COUNTER
	db 20, FLAME_WHEEL
	db 30, BATON_PASS
	db 41, PSYCHIC_M
	db 43, HORN_ATTACK
	db 51, EARTHQUAKE
	db 53, REVERSAL
	db 58, SHADOW_BALL
	db 59, MEGAHORN
	db 61, DOUBLE_EDGE
	db 0 ; no more level-up moves

PinecoEvosAttacks:
	db EVOLVE_LEVEL, 29, FORRETRESS
	db 0 ; no more evolutions
	db 1, TAKE_DOWN
	db 1, PROTECT
	db 11, SELFDESTRUCT
	db 15, PIN_MISSILE
	db 22, RAPID_SPIN
	db 29, BIDE
	db 33, EXPLOSION
	db 37, EARTHQUAKE
	db 43, SPIKES
	db 50, DOUBLE_EDGE
	db 52, BATON_PASS
	db 0 ; no more level-up moves

ForretressEvosAttacks:
	db 0 ; no more evolutions
	db 1, TAKE_DOWN
	db 1, PROTECT
	db 11, SELFDESTRUCT
	db 15, PIN_MISSILE
	db 22, RAPID_SPIN
	db 29, ROCK_SLIDE
	db 34, EXPLOSION
	db 35, EARTHQUAKE
	db 38, BODY_SLAM
	db 49, SPIKES
	db 51, BARRIER
	db 59, DOUBLE_EDGE
	db 60, BATON_PASS
	db 0 ; no more level-up moves

DunsparceEvosAttacks:
	db 0 ; no more evolutions
	db 1, FLAIL
	db 1, DEFENSE_CURL
	db 4, MUD_SLAP
	db 13, GLARE
	db 18, SPITE
	db 20, HEADBUTT
	db 24, ANCIENTPOWER
	db 26, RAPID_SPIN
	db 28, DRILL_PECK
	db 30, SCREECH
	db 32, ROLLOUT
	db 38, HORN_ATTACK
	db 44, STEEL_WING
	db 47, EARTHQUAKE
	db 51, DOUBLE_EDGE
	db 59, OUTRAGE
	db 0 ; no more level-up moves

GligarEvosAttacks:
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 10, MAGNITUDE
	db 21, ROCK_SLIDE
	db 30, SUPER_FANG
	db 36, WING_ATTACK
	db 40, SLUDGE_BOMB
	db 42, SCREECH
	db 55, EARTHQUAKE
	db 61, GUILLOTINE
	db 0 ; no more level-up moves

SteelixEvosAttacks:
	db 0 ; no more evolutions
	db 1, BIND
	db 1, ROCK_THROW
	db 5, SCREECH
	db 12, DRAGONBREATH
	db 16, SCARY_FACE
	db 20, MAGNITUDE
	db 31, DIG
	db 34, ROCK_SLIDE
	db 37, SELFDESTRUCT
	db 41, DOUBLE_EDGE
	db 48, EARTHQUAKE
	db 51, EXPLOSION
	db 52, IRON_TAIL
	db 0 ; no more level-up moves

SnubbullEvosAttacks:
	db EVOLVE_LEVEL, 21, GRANBULL
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SCARY_FACE
	db 4, TAIL_WHIP
	db 8, CHARM
	db 13, KARATE_CHOP
	db 16, HEADBUTT
	db 19, LICK
	db 26, ROAR
	db 34, SUBMISSION
	db 43, GLARE
	db 49, ROCK_SLIDE
	db 51, EARTHQUAKE
	db 55, RETURN
	db 0 ; no more level-up moves

GranbullEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SCARY_FACE
	db 4, TAIL_WHIP
	db 8, CHARM
	db 13, KARATE_CHOP
	db 16, HEADBUTT
	db 19, LICK
	db 26, ROAR
	db 34, SUBMISSION
	db 43, GLARE
	db 49, ROCK_SLIDE
	db 51, EARTHQUAKE
	db 55, RETURN
	db 0 ; no more level-up moves

QwilfishEvosAttacks:
	db 0 ; no more evolutions
	db 1, SPIKES
	db 1, POISON_STING
	db 10, HARDEN
	db 10, MINIMIZE
	db 19, BUBBLEBEAM
	db 28, PIN_MISSILE
	db 35, SLUDGE_BOMB
	db 37, DOUBLE_EDGE
	db 46, HYDRO_PUMP
	db 49, DESTINY_BOND
	db 55, EXPLOSION
	db 0 ; no more level-up moves

ScizorEvosAttacks:
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, LEER
	db 6, FOCUS_ENERGY
	db 12, PURSUIT
	db 22, FURY_CUTTER
	db 24, METAL_CLAW
	db 36, SLASH
	db 48, MACH_PUNCH
	db 52, CROSS_CHOP
	db 58, DOUBLE_TEAM
	db 0 ; no more level-up moves

ShuckleEvosAttacks:
	db 0 ; no more evolutions
	db 1, BIND
	db 1, WITHDRAW
	db 9, WRAP
	db 14, ENCORE
	db 20, DISABLE
	db 22, STRING_SHOT
	db 23, SAFEGUARD
	db 28, BIDE
	db 37, SWEET_KISS
	db 0 ; no more level-up moves

HeracrossEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 6, HORN_ATTACK
	db 12, ENDURE
	db 19, FURY_CUTTER
	db 27, COUNTER
	db 35, VITAL_THROW
	db 40, WING_ATTACK
	db 54, SUBMISSION
	db 64, MEGAHORN
	db 0 ; no more level-up moves

SneaselEvosAttacks:
	db 0 ; no more evolutions
	db 1, METAL_CLAW
	db 1, LEER
	db 9, FAINT_ATTACK
	db 12, ICY_WIND
	db 15, SLASH
	db 28, SCREECH
	db 31, LOW_KICK
	db 38, IRON_TAIL
	db 41, CROSS_CHOP
	db 44, CRUNCH
	db 49, POWDER_SNOW
	db 56, ICE_BEAM
	db 0 ; no more level-up moves

TeddiursaEvosAttacks:
	db EVOLVE_LEVEL, 30, URSARING
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 8, LICK
	db 12, FURY_SWIPES
	db 16, SLASH
	db 20, DIG
	db 24, SUBMISSION
	db 36, DOUBLE_EDGE
	db 39, SCARY_FACE
	db 43, METAL_CLAW
	db 50, EARTHQUAKE
	db 0 ; no more level-up moves

UrsaringEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 8, LICK
	db 12, FURY_SWIPES
	db 16, SLASH
	db 20, DIG
	db 24, SUBMISSION
	db 36, DOUBLE_EDGE
	db 39, SCARY_FACE
	db 43, METAL_CLAW
	db 50, EARTHQUAKE
	db 0 ; no more level-up moves

SlugmaEvosAttacks:
	db EVOLVE_LEVEL, 16, MAGCARGO
	db 0 ; no more evolutions
	db 1, SMOG
	db 8, EMBER
	db 15, ROCK_THROW
	db 22, FLAME_WHEEL
	db 29, RECOVER
	db 36, FLAMETHROWER
	db 43, ROCK_SLIDE
	db 50, GIGA_DRAIN
	db 0 ; no more level-up moves

MagcargoEvosAttacks:
	db 0 ; no more evolutions
	db 1, SMOG
	db 8, EMBER
	db 15, ROCK_THROW
	db 22, FLAME_WHEEL
	db 29, RECOVER
	db 36, FLAMETHROWER
	db 43, ROCK_SLIDE
	db 50, GIGA_DRAIN
	db 0 ; no more level-up moves

SwinubEvosAttacks:
	db EVOLVE_LEVEL, 30, PILOSWINE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 5, MUD_SLAP
	db 8, ICY_WIND
	db 14, MIST
	db 18, CHARM
	db 22, POWDER_SNOW
	db 26, ICE_BEAM
	db 30, ANCIENTPOWER
	db 38, ROAR
	db 44, EARTHQUAKE
	db 0 ; no more level-up moves

PiloswineEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 5, MUD_SLAP
	db 8, ICY_WIND
	db 14, MIST
	db 18, CHARM
	db 22, POWDER_SNOW
	db 26, ICE_BEAM
	db 30, ANCIENTPOWER
	db 38, ROAR
	db 44, EARTHQUAKE
	db 51, MEGAHORN
	db 0 ; no more level-up moves

CorsolaEvosAttacks:
	db 0 ; no more evolutions
	db 1, BUBBLEBEAM
	db 6, CONFUSE_RAY
	db 13, ICE_BEAM
	db 19, RECOVER
	db 25, RAPID_SPIN
	db 31, SPIKE_CANNON
	db 37, MIRROR_COAT
	db 43, ANCIENTPOWER
	db 0 ; no more level-up moves

RemoraidEvosAttacks:
	db EVOLVE_LEVEL, 21, OCTILLERY
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 11, CONSTRICT
	db 22, PSYBEAM
	db 22, AURORA_BEAM
	db 22, BUBBLEBEAM
	db 30, OCTAZOOKA
	db 30, FOCUS_ENERGY
	db 32, ICE_BEAM
	db 32, FLAMETHROWER
	db 51, HYDRO_PUMP
	db 62, HYPER_BEAM
	db 0 ; no more level-up moves

OctilleryEvosAttacks:
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 11, CONSTRICT
	db 22, PSYBEAM
	db 22, AURORA_BEAM
	db 22, BUBBLEBEAM
	db 30, OCTAZOOKA
	db 30, FOCUS_ENERGY
	db 32, ICE_BEAM
	db 32, FLAMETHROWER
	db 51, HYDRO_PUMP
	db 62, HYPER_BEAM
	db 0 ; no more level-up moves

DelibirdEvosAttacks:
	db 0 ; no more evolutions
	db 1, PRESENT
	db 21, SPIKES
	db 21, ICE_BEAM
	db 41, DESTINY_BOND
	db 41, SUBSTITUTE
	db 51, SKY_ATTACK
	db 51, BATON_PASS
	db 0 ; no more level-up moves

MantineEvosAttacks:
	db 0 ; no more evolutions
	db 1, AURORA_BEAM
	db 6, CONFUSE_RAY
	db 13, BUBBLEBEAM
	db 20, TOXIC
	db 25, WING_ATTACK
	db 31, ICE_BEAM
	db 37, SURF
	db 72, AEROBLAST
	db 0 ; no more level-up moves

SkarmoryEvosAttacks:
	db 0 ; no more evolutions
	db 1, LEER
	db 1, PECK
	db 17, MUD_SLAP
	db 25, WING_ATTACK
	db 34, ROCK_SLIDE
	db 48, DRILL_PECK
	db 52, STEEL_WING
	db 61, WHIRLWIND
	db 0 ; no more level-up moves

HoundourEvosAttacks:
	db EVOLVE_LEVEL, 27, HOUNDOOM
	db 0 ; no more evolutions
	db 1, LEER
	db 1, EMBER
	db 7, BITE
	db 13, SMOG
	db 16, FLAME_WHEEL
	db 20, ROAR
	db 27, FAINT_ATTACK
	db 35, FLAMETHROWER
	db 43, CRUNCH
	db 48, SLUDGE_BOMB
	db 55, FIRE_BLAST
	db 0 ; no more level-up moves

HoundoomEvosAttacks:
	db 0 ; no more evolutions
	db 1, LEER
	db 1, EMBER
	db 7, BITE
	db 13, SMOG
	db 16, FLAME_WHEEL
	db 20, ROAR
	db 27, FAINT_ATTACK
	db 35, FLAMETHROWER
	db 43, CRUNCH
	db 48, SLUDGE_BOMB
	db 55, FIRE_BLAST
	db 0 ; no more level-up moves

KingdraEvosAttacks:
	db 0 ; no more evolutions
	db 1, SMOKESCREEN
	db 1, BUBBLEBEAM
	db 12, LEER
	db 19, TWISTER
	db 22, AURORA_BEAM
	db 25, OCTAZOOKA
	db 36, SAFEGUARD
	db 40, DRAGONBREATH
	db 42, ICE_BEAM
	db 51, HYDRO_PUMP
	db 0 ; no more level-up moves

PhanpyEvosAttacks:
	db EVOLVE_LEVEL, 22, DONPHAN
	db 0 ; no more evolutions
	db 1, ROCK_THROW
	db 1, GROWL
	db 9, DEFENSE_CURL
	db 11, HEADBUTT
	db 17, ROLLOUT
	db 24, DIG
	db 33, SWEET_KISS
	db 41, EARTHQUAKE
	db 45, RAPID_SPIN
	db 49, ENDURE
	db 51, ROCK_SLIDE
	db 0 ; no more level-up moves

DonphanEvosAttacks:
	db 0 ; no more evolutions
	db 1, ROCK_THROW
	db 1, GROWL
	db 9, DEFENSE_CURL
	db 17, ROLLOUT
	db 25, FURY_ATTACK
	db 33, DIG
	db 38, POWDER_SNOW
	db 41, EARTHQUAKE
	db 45, RAPID_SPIN
	db 49, ENDURE
	db 51, ROCK_SLIDE
	db 0 ; no more level-up moves

Porygon2EvosAttacks:
	db 0 ; no more evolutions
	db 1, CONVERSION
	db 11, TRI_ATTACK
	db 13, CONFUSE_RAY
	db 19, AGILITY
	db 22, ICE_BEAM
	db 35, RECOVER
	db 41, THUNDERBOLT
	db 50, CONVERSION2
	db 52, TRI_ATTACK
	db 64, ZAP_CANNON
	db 0 ; no more level-up moves

StantlerEvosAttacks:
	db 0 ; no more evolutions
	db 1, HEADBUTT
	db 8, SCARY_FACE
	db 11, LICK
	db 15, HYPNOSIS
	db 19, BATON_PASS
	db 23, STOMP
	db 25, DOUBLE_KICK
	db 27, PSYCHIC_M
	db 31, SAND_ATTACK
	db 33, FUTURE_SIGHT
	db 40, DOUBLE_EDGE
	db 42, CONFUSE_RAY
	db 48, SHADOW_BALL
	db 50, MEGAHORN
	db 61, THRASH
	db 0 ; no more level-up moves

SmeargleEvosAttacks:
	db 0 ; no more evolutions
	db 1, SKETCH
	db 5, SKETCH
	db 10, SKETCH
	db 15, SKETCH
	db 20, SKETCH
	db 25, SKETCH
	db 30, SKETCH
	db 35, SKETCH
	db 40, SKETCH
	db 45, SKETCH
	db 50, SKETCH
	db 55, SKETCH
	db 60, SKETCH
	db 65, SKETCH
	db 70, SKETCH
	db 75, SKETCH
	db 80, SKETCH
	db 85, SKETCH
	db 90, SKETCH
	db 95, SKETCH
	db 0 ; no more level-up moves

TyrogueEvosAttacks:
	db EVOLVE_STAT, 20, ATK_LT_DEF, HITMONCHAN
	db EVOLVE_STAT, 20, ATK_GT_DEF, HITMONLEE
	db EVOLVE_STAT, 20, ATK_EQ_DEF, HITMONTOP
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

HitmontopEvosAttacks:
	db 0 ; no more evolutions
	db 20, RAPID_SPIN
	db 23, FOCUS_ENERGY
	db 25, PURSUIT
	db 27, QUICK_ATTACK
	db 30, ROLLING_KICK
	db 32, MACH_PUNCH
	db 36, TRIPLE_KICK
	db 37, KARATE_CHOP
	db 40, DETECT
	db 42, SUBMISSION
	db 49, CROSS_CHOP
	db 0 ; no more level-up moves

SmoochumEvosAttacks:
	db EVOLVE_LEVEL, 28, JYNX
	db 0 ; no more evolutions
	db 1, SWEET_KISS
	db 7, LICK
	db 13, POWDER_SNOW
	db 19, PSYBEAM
	db 25, SING
	db 31, AURORA_BEAM
	db 37, PERISH_SONG
	db 40, ICE_BEAM
	db 42, PSYCHIC_M
	db 49, DESTINY_BOND
	db 0 ; no more level-up moves

ElekidEvosAttacks:
	db EVOLVE_LEVEL, 28, ELECTABUZZ
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, LEER
	db 13, THUNDERPUNCH
	db 19, ICE_PUNCH
	db 25, SWIFT
	db 31, SCREECH
	db 37, THUNDERBOLT
	db 43, THUNDER
	dwb 49, CROSS_CHOP
	db 0 ; no more level-up moves

MagbyEvosAttacks:
	db EVOLVE_LEVEL, 28, MAGMAR
	db 0 ; no more evolutions
	db 1, EMBER
	db 7, LEER
	db 13, SMOG
	db 19, FIRE_PUNCH
	db 25, SMOKESCREEN
	db 31, THUNDERBOLT
	db 37, FLAMETHROWER
	db 43, CONFUSE_RAY
	db 49, FIRE_BLAST
	db 0 ; no more level-up moves

MiltankEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, GROWL
	db 8, DEFENSE_CURL
	db 13, STOMP
	db 19, MILK_DRINK
	db 26, BODY_SLAM
	db 34, ROLLOUT
	db 43, MEGAHORN
	db 53, HEAL_BELL
	db 55, DOUBLE_EDGE
	db 0 ; no more level-up moves

BlisseyEvosAttacks:
	db 0 ; no more evolutions
	db 1, DOUBLESLAP
	db 13, SOFTBOILED
	db 23, MINIMIZE
	db 29, LOVELY_KISS
	db 35, EGG_BOMB
	db 57, HEAL_BELL
	db 0 ; no more level-up moves

RaikouEvosAttacks:
	db 0 ; no more evolutions
	db 1, BITE
	db 1, LEER
	db 11, THUNDERSHOCK
	db 21, ROAR
	db 31, QUICK_ATTACK
	db 41, SPARK
	db 51, REFLECT
	db 61, CRUNCH
	db 71, THUNDER
	db 0 ; no more level-up moves

EnteiEvosAttacks:
	db 0 ; no more evolutions
	db 1, BITE
	db 1, LEER
	db 11, EMBER
	db 21, ROAR
	db 31, FIRE_SPIN
	db 41, STOMP
	db 51, FLAMETHROWER
	db 61, SWAGGER
	db 71, FIRE_BLAST
	db 0 ; no more level-up moves

SuicuneEvosAttacks:
	db 0 ; no more evolutions
	db 1, BITE
	db 1, LEER
	db 11, BUBBLEBEAM
	db 21, RAIN_DANCE
	db 31, GUST
	db 41, AURORA_BEAM
	db 51, MIST
	db 61, MIRROR_COAT
	db 71, HYDRO_PUMP
	db 0 ; no more level-up moves

LarvitarEvosAttacks:
	db EVOLVE_LEVEL, 30, PUPITAR
	db 0 ; no more evolutions
	db 1, BITE
	db 15, SCREECH
	db 22, ROCK_SLIDE
	db 29, THRASH
	db 36, SCARY_FACE
	db 53, CRUNCH
	db 60, EARTHQUAKE
	db 67, HYPER_BEAM
	db 0 ; no more level-up moves

PupitarEvosAttacks:
	db EVOLVE_LEVEL, 55, TYRANITAR
	db 0 ; no more evolutions
	db 1, BITE
	db 15, SCREECH
	db 22, ROCK_SLIDE
	db 29, THRASH
	db 38, SCARY_FACE
	db 53, CRUNCH
	db 60, EARTHQUAKE
	db 67, HYPER_BEAM
	db 0 ; no more level-up moves

TyranitarEvosAttacks:
	db 0 ; no more evolutions
	db 1, BITE
	db 15, SCREECH
	db 22, ROCK_SLIDE
	db 29, THRASH
	db 38, SCARY_FACE
	db 53, CRUNCH
	db 61, EARTHQUAKE
	db 75, HYPER_BEAM
	db 0 ; no more level-up moves

LugiaEvosAttacks:
	db 0 ; no more evolutions
	db 1, AEROBLAST
	db 11, SAFEGUARD
	db 22, GUST
	db 33, RECOVER
	db 44, HYDRO_PUMP
	db 55, RAIN_DANCE
	db 66, SWIFT
	db 77, WHIRLWIND
	db 88, ANCIENTPOWER
	db 99, FUTURE_SIGHT
	db 0 ; no more level-up moves

HoOhEvosAttacks:
	db 0 ; no more evolutions
	db 1, SACRED_FIRE
	db 11, SAFEGUARD
	db 22, GUST
	db 33, RECOVER
	db 44, FIRE_BLAST
	db 55, SUNNY_DAY
	db 66, SWIFT
	db 77, WHIRLWIND
	db 88, ANCIENTPOWER
	db 99, FUTURE_SIGHT
	db 0 ; no more level-up moves

CelebiEvosAttacks:
	db 0 ; no more evolutions
	db 1, LEECH_SEED
	db 1, CONFUSION
	db 1, RECOVER
	db 1, HEAL_BELL
	db 10, SAFEGUARD
	db 20, ANCIENTPOWER
	db 30, FUTURE_SIGHT
	db 40, BATON_PASS
	db 50, PERISH_SONG
	db 0 ; no more level-up moves
