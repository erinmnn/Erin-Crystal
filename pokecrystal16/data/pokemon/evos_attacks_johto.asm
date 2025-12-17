SECTION "Evolutions and Attacks 2", ROMX

EvosAttacksPointers2::
	dw ChikoritaEvosAttacks
	dw BayleefEvosAttacks
	dw MeganiumEvosAttacks
	dw CyndaquilEvosAttacks
	dw QuilavaEvosAttacks
	dw TyphlosionEvosAttacks
	dw TotodileEvosAttacks
	dw CroconawEvosAttacks
	dw FeraligatrEvosAttacks
	dw SentretEvosAttacks
	dw FurretEvosAttacks
	dw HoothootEvosAttacks
	dw NoctowlEvosAttacks
	dw LedybaEvosAttacks
	dw LedianEvosAttacks
	dw SpinarakEvosAttacks
	dw AriadosEvosAttacks
	dw CrobatEvosAttacks
	dw ChinchouEvosAttacks
	dw LanturnEvosAttacks
	dw PichuEvosAttacks
	dw CleffaEvosAttacks
	dw IgglybuffEvosAttacks
	dw TogepiEvosAttacks
	dw TogeticEvosAttacks
	dw NatuEvosAttacks
	dw XatuEvosAttacks
	dw MareepEvosAttacks
	dw FlaaffyEvosAttacks
	dw AmpharosEvosAttacks
	dw BellossomEvosAttacks
	dw MarillEvosAttacks
	dw AzumarillEvosAttacks
	dw SudowoodoEvosAttacks
	dw PolitoedEvosAttacks
	dw HoppipEvosAttacks
	dw SkiploomEvosAttacks
	dw JumpluffEvosAttacks
	dw AipomEvosAttacks
	dw SunkernEvosAttacks
	dw SunfloraEvosAttacks
	dw YanmaEvosAttacks
	dw WooperEvosAttacks
	dw QuagsireEvosAttacks
	dw EspeonEvosAttacks
	dw UmbreonEvosAttacks
	dw MurkrowEvosAttacks
	dw SlowkingEvosAttacks
	dw MisdreavusEvosAttacks
	dw UnownEvosAttacks
	dw WobbuffetEvosAttacks
	dw GirafarigEvosAttacks
	dw PinecoEvosAttacks
	dw ForretressEvosAttacks
	dw DunsparceEvosAttacks
	dw GligarEvosAttacks
	dw SteelixEvosAttacks
	dw SnubbullEvosAttacks
	dw GranbullEvosAttacks
	dw QwilfishEvosAttacks
	dw ScizorEvosAttacks
	dw ShuckleEvosAttacks
	dw HeracrossEvosAttacks
	dw SneaselEvosAttacks
	dw TeddiursaEvosAttacks
	dw UrsaringEvosAttacks
	dw SlugmaEvosAttacks
	dw MagcargoEvosAttacks
	dw SwinubEvosAttacks
	dw PiloswineEvosAttacks
	dw CorsolaEvosAttacks
	dw RemoraidEvosAttacks
	dw OctilleryEvosAttacks
	dw DelibirdEvosAttacks
	dw MantineEvosAttacks
	dw SkarmoryEvosAttacks
	dw HoundourEvosAttacks
	dw HoundoomEvosAttacks
	dw KingdraEvosAttacks
	dw PhanpyEvosAttacks
	dw DonphanEvosAttacks
	dw Porygon2EvosAttacks
	dw StantlerEvosAttacks
	dw SmeargleEvosAttacks
	dw TyrogueEvosAttacks
	dw HitmontopEvosAttacks
	dw SmoochumEvosAttacks
	dw ElekidEvosAttacks
	dw MagbyEvosAttacks
	dw MiltankEvosAttacks
	dw BlisseyEvosAttacks
	dw RaikouEvosAttacks
	dw EnteiEvosAttacks
	dw SuicuneEvosAttacks
	dw LarvitarEvosAttacks
	dw PupitarEvosAttacks
	dw TyranitarEvosAttacks
	dw LugiaEvosAttacks
	dw HoOhEvosAttacks
	dw CelebiEvosAttacks
.IndirectEnd::

ChikoritaEvosAttacks:
	dbbw EVOLVE_LEVEL, 16, BAYLEEF
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 1, MEGA_DRAIN
	dbw 8, WRAP
	dbw 12, RAZOR_LEAF
	dbw 15, SYNTHESIS
	dbw 17, STUN_SPORE
	dbw 18, HEADBUTT
	dbw 24, GIGA_DRAIN
	dbw 30, SAFEGUARD
	dbw 36, LOVELY_KISS
	dbw 42, SOLARBEAM
	dbw 44, POISONPOWDER
	dbw 52, PETAL_DANCE
	db 0 ; no more level-up moves

BayleefEvosAttacks:
	dbbw EVOLVE_LEVEL, 32, MEGANIUM
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 1, MEGA_DRAIN
	dbw 8, WRAP
	dbw 12, RAZOR_LEAF
	dbw 15, SYNTHESIS
	dbw 17, STUN_SPORE
	dbw 18, HEADBUTT
	dbw 24, GIGA_DRAIN
	dbw 30, SAFEGUARD
	dbw 36, LOVELY_KISS
	dbw 44, SOLARBEAM
	dbw 48, POISONPOWDER
	dbw 54, PETAL_DANCE
	db 0 ; no more level-up moves

MeganiumEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 1, MEGA_DRAIN
	dbw 8, WRAP
	dbw 12, RAZOR_LEAF
	dbw 15, SYNTHESIS
	dbw 17, STUN_SPORE
	dbw 18, HEADBUTT
	dbw 24, GIGA_DRAIN
	dbw 30, SAFEGUARD
	dbw 36, LOVELY_KISS
	dbw 45, SOLARBEAM
	dbw 50, POISONPOWDER
	dbw 56, PETAL_DANCE
	db 0 ; no more level-up moves

CyndaquilEvosAttacks:
	dbbw EVOLVE_LEVEL, 16, QUILAVA
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, SMOKESCREEN
	dbw 1, EMBER
	dbw 8, SMOG
	dbw 12, ROLLOUT
	dbw 15, FLAME_WHEEL
	dbw 17, FIRE_PUNCH
	dbw 18, HEADBUTT
	dbw 24, FIRE_SPIN
	dbw 30, FLAMETHROWER
	dbw 36, SUBMISSION
	dbw 42, SOLARBEAM
	dbw 44, FURY_CUTTER
	dbw 52, FIRE_BLAST
	db 0 ; no more level-up moves

QuilavaEvosAttacks:
	dbbw EVOLVE_LEVEL, 32, TYPHLOSION
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, SMOKESCREEN
	dbw 1, EMBER
	dbw 8, SMOG
	dbw 12, ROLLOUT
	dbw 15, FLAME_WHEEL
	dbw 17, FIRE_PUNCH
	dbw 18, HEADBUTT
	dbw 24, FIRE_SPIN
	dbw 30, FLAMETHROWER
	dbw 38, SUBMISSION
	dbw 44, SOLARBEAM
	dbw 48, FURY_CUTTER
	dbw 54, FIRE_BLAST
	db 0 ; no more level-up moves

TyphlosionEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, SMOKESCREEN
	dbw 1, EMBER
	dbw 8, SMOG
	dbw 12, ROLLOUT
	dbw 15, FLAME_WHEEL
	dbw 17, FIRE_PUNCH
	dbw 18, HEADBUTT
	dbw 24, FIRE_SPIN
	dbw 30, FLAMETHROWER
	dbw 38, SUBMISSION
	dbw 45, SOLARBEAM
	dbw 50, FURY_CUTTER
	dbw 56, FIRE_BLAST
	db 0 ; no more level-up moves

TotodileEvosAttacks:
	dbbw EVOLVE_LEVEL, 16, CROCONAW
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 1, LEER
	dbw 1, WATER_GUN
	dbw 8, BITE
	dbw 12, SEISMIC_TOSS
	dbw 15, ICE_PUNCH
	dbw 17, BUBBLEBEAM
	dbw 18, HEADBUTT
	dbw 24, WATERFALL
	dbw 30, SUBMISSION
	dbw 36, SCARY_FACE
	dbw 42, EARTHQUAKE
	dbw 44, ROCK_SLIDE
	dbw 52, HYDRO_PUMP
	db 0 ; no more level-up moves

CroconawEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, FERALIGATR
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 1, LEER
	dbw 1, WATER_GUN
	dbw 8, BITE
	dbw 12, SEISMIC_TOSS
	dbw 15, ICE_PUNCH
	dbw 17, BUBBLEBEAM
	dbw 18, HEADBUTT
	dbw 24, WATERFALL
	dbw 30, SUBMISSION
	dbw 38, SCARY_FACE
	dbw 44, EARTHQUAKE
	dbw 48, ROCK_SLIDE
	dbw 54, HYDRO_PUMP
	db 0 ; no more level-up moves

FeraligatrEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 1, LEER
	dbw 1, WATER_GUN
	dbw 8, BITE
	dbw 12, SEISMIC_TOSS
	dbw 15, ICE_PUNCH
	dbw 17, BUBBLEBEAM
	dbw 18, HEADBUTT
	dbw 24, WATERFALL
	dbw 30, SUBMISSION
	dbw 38, SCARY_FACE
	dbw 45, EARTHQUAKE
	dbw 50, ROCK_SLIDE
	dbw 56, HYDRO_PUMP
	db 0 ; no more level-up moves

SentretEvosAttacks:
	dbbw EVOLVE_LEVEL, 15, FURRET
	db 0 ; no more evolutions
	dbw 1, QUICK_ATTACK
	dbw 5, DEFENSE_CURL
	dbw 11, CHARM
	dbw 17, FURY_SWIPES
	dbw 25, BODY_SLAM
	dbw 27, SHADOW_BALL
	dbw 31, SWIFT
	dbw 40, RETURN
	dbw 44, SURF
	dbw 48, DOUBLE_EDGE
	db 0 ; no more level-up moves

FurretEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, QUICK_ATTACK
	dbw 5, DEFENSE_CURL
	dbw 11, CHARM
	dbw 17, FURY_SWIPES
	dbw 25, BODY_SLAM
	dbw 27, SHADOW_BALL
	dbw 31, SWIFT
	dbw 40, RETURN
	dbw 44, SURF
	dbw 48, DOUBLE_EDGE
	db 0 ; no more level-up moves

HoothootEvosAttacks:
	dbbw EVOLVE_LEVEL, 20, NOCTOWL
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, GROWL
	dbw 6, FORESIGHT
	dbw 11, PECK
	dbw 13, HEADBUTT
	dbw 16, HYPNOSIS
	dbw 20, WING_ATTACK
	dbw 22, PSYBEAM
	dbw 28, NIGHT_SHADE
	dbw 34, PSYCHIC_M
	dbw 48, DREAM_EATER
	dbw 51, REFLECT
	dbw 51, LIGHT_SCREEN
	db 0 ; no more level-up moves

NoctowlEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, GROWL
	dbw 6, FORESIGHT
	dbw 11, PECK
	dbw 13, HEADBUTT
	dbw 16, HYPNOSIS
	dbw 20, WING_ATTACK
	dbw 22, PSYBEAM
	dbw 28, NIGHT_SHADE
	dbw 34, PSYCHIC_M
	dbw 48, DREAM_EATER
	dbw 51, REFLECT
	dbw 51, LIGHT_SCREEN
	db 0 ; no more level-up moves

LedybaEvosAttacks:
	dbbw EVOLVE_LEVEL, 16, LEDIAN
	db 0 ; no more evolutions
	dbw 1, COMET_PUNCH
	dbw 8, SUPERSONIC
	dbw 16, LIGHT_SCREEN
	dbw 16, REFLECT
	dbw 22, SAFEGUARD
	dbw 24, GIGA_DRAIN
	dbw 29, BATON_PASS
	dbw 33, ENCORE
	dbw 36, TOXIC
	dbw 40, PSYBEAM
	db 0 ; no more level-up moves

LedianEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, COMET_PUNCH
	dbw 8, SUPERSONIC
	dbw 16, LIGHT_SCREEN
	dbw 16, REFLECT
	dbw 22, MACH_PUNCH
	dbw 24, SAFEGUARD
	dbw 28, GIGA_DRAIN
	dbw 36, ENCORE
	dbw 40, PSYBEAM
	db 0 ; no more level-up moves

SpinarakEvosAttacks:
	dbbw EVOLVE_LEVEL, 21, ARIADOS
	db 0 ; no more evolutions
	dbw 1, POISON_STING
	dbw 1, STRING_SHOT
	dbw 6, SCARY_FACE
	dbw 11, TOXIC
	dbw 17, NIGHT_SHADE
	dbw 23, LEECH_LIFE
	dbw 30, SLUDGE_BOMB
	dbw 37, SPIDER_WEB
	dbw 45, PSYCHIC_M
	dbw 51, SLUDGE
	db 0 ; no more level-up moves

AriadosEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, POISON_STING
	dbw 1, STRING_SHOT
	dbw 6, SCARY_FACE
	dbw 11, TOXIC
	dbw 17, NIGHT_SHADE
	dbw 23, LEECH_LIFE
	dbw 30, SLUDGE_BOMB
	dbw 37, SPIDER_WEB
	dbw 45, PSYCHIC_M
	dbw 51, SLUDGE
	dbw 53, MEGAHORN
	db 0 ; no more level-up moves

CrobatEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, LEECH_LIFE
	dbw 6, CONFUSE_RAY
	dbw 12, MEGA_DRAIN
	dbw 16, TOXIC
	dbw 23, WING_ATTACK
	dbw 34, SLUDGE_BOMB
	dbw 36, MEAN_LOOK
	dbw 40, SCREECH
	dbw 46, HAZE
	dbw 54, SHADOW_BALL
	dbw 60, GIGA_DRAIN
	dbw 66, SKY_ATTACK
	db 0 ; no more level-up moves

ChinchouEvosAttacks:
	dbbw EVOLVE_LEVEL, 27, LANTURN
	db 0 ; no more evolutions
	dbw 1, BUBBLE
	dbw 1, CONFUSE_RAY
	dbw 5, WATER_GUN
	dbw 13, SPARK
	dbw 17, BUBBLEBEAM
	dbw 25, AURORA_BEAM
	dbw 32, THUNDER_WAVE
	dbw 41, ICE_BEAM
	dbw 44, THUNDERBOLT
	dbw 53, HYDRO_PUMP
	dbw 60, THUNDER
	db 0 ; no more level-up moves

LanturnEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, BUBBLE
	dbw 1, CONFUSE_RAY
	dbw 5, WATER_GUN
	dbw 13, SPARK
	dbw 17, BUBBLEBEAM
	dbw 25, AURORA_BEAM
	dbw 32, THUNDER_WAVE
	dbw 41, ICE_BEAM
	dbw 44, THUNDERBOLT
	dbw 53, HYDRO_PUMP
	dbw 60, THUNDER
	db 0 ; no more level-up moves

PichuEvosAttacks:
	dbbw EVOLVE_HAPPINESS, TR_ANYTIME, PIKACHU
	db 0 ; no more evolutions
	dbw 1, THUNDERSHOCK
	dbw 1, CHARM
	dbw 6, TAIL_WHIP
	dbw 8, THUNDER_WAVE
	dbw 11, SWEET_KISS
	dbw 24, FLY
	db 0 ; no more level-up moves

CleffaEvosAttacks:
	dbbw EVOLVE_HAPPINESS, TR_ANYTIME, CLEFAIRY
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 1, CHARM
	dbw 4, ENCORE
	dbw 8, SING
	dbw 13, SWEET_KISS
	db 0 ; no more level-up moves

IgglybuffEvosAttacks:
	dbbw EVOLVE_HAPPINESS, TR_ANYTIME, JIGGLYPUFF
	db 0 ; no more evolutions
	dbw 1, SING
	dbw 1, CHARM
	dbw 4, DEFENSE_CURL
	dbw 9, POUND
	dbw 14, SWEET_KISS
	db 0 ; no more level-up moves

TogepiEvosAttacks:
	dbbw EVOLVE_LEVEL, 21, TOGETIC
	db 0 ; no more evolutions
	dbw 1, GROWL
	dbw 1, CHARM
	dbw 5, THUNDER_WAVE
	dbw 7, METRONOME
	dbw 18, SWEET_KISS
	dbw 23, ENCORE
	dbw 29, SAFEGUARD
	dbw 35, DOUBLE_EDGE
	db 0 ; no more level-up moves

TogeticEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, GROWL
	dbw 1, CHARM
	dbw 7, METRONOME
	dbw 18, SWEET_KISS
	dbw 21, PSYWAVE
	dbw 23, ENCORE
	dbw 27, RAZOR_LEAF
	dbw 29, SAFEGUARD
	dbw 35, DOUBLE_EDGE
	dbw 38, PSYCHIC_M
	dbw 43, TRI_ATTACK
	dbw 51, ANCIENTPOWER
	db 0 ; no more level-up moves

NatuEvosAttacks:
	dbbw EVOLVE_LEVEL, 25, XATU
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 1, LEER
	dbw 11, PSYBEAM
	dbw 15, NIGHT_SHADE
	dbw 19, THIEF
	dbw 23, WING_ATTACK
	dbw 30, FUTURE_SIGHT
	dbw 36, CONFUSE_RAY
	dbw 42, PSYCHIC_M
	dbw 50, GIGA_DRAIN
	db 0 ; no more level-up moves

XatuEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 1, LEER
	dbw 11, PSYBEAM
	dbw 15, NIGHT_SHADE
	dbw 19, THIEF
	dbw 23, WING_ATTACK
	dbw 30, FUTURE_SIGHT
	dbw 36, CONFUSE_RAY
	dbw 42, PSYCHIC_M
	dbw 50, GIGA_DRAIN
	db 0 ; no more level-up moves

MareepEvosAttacks:
	dbbw EVOLVE_LEVEL, 15, FLAAFFY
	db 0 ; no more evolutions
	dbw 1, THUNDERSHOCK
	dbw 1, GROWL
	dbw 9, THUNDER_WAVE
	dbw 16, SPARK
	dbw 23, COTTON_SPORE
	dbw 30, THUNDERBOLT
	dbw 37, THUNDER
	db 0 ; no more level-up moves

FlaaffyEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, AMPHAROS
	db 0 ; no more evolutions
	dbw 1, GROWL
	dbw 1, THUNDERSHOCK
	dbw 9, THUNDER_WAVE
	dbw 16, SPARK
	dbw 27, COTTON_SPORE
	dbw 32, FIRE_PUNCH
	dbw 36, THUNDERBOLT
	dbw 45, THUNDER
	db 0 ; no more level-up moves

AmpharosEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, GROWL
	dbw 1, THUNDERSHOCK
	dbw 9, THUNDER_WAVE
	dbw 18, SPARK
	dbw 27, COTTON_SPORE
	dbw 30, FIRE_PUNCH
	dbw 42, THUNDERBOLT
	dbw 57, THUNDER
	db 0 ; no more level-up moves

BellossomEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, ABSORB
	dbw 1, SWEET_SCENT
	dbw 1, STUN_SPORE
	dbw 1, PETAL_DANCE
	dbw 55, SOLARBEAM
	db 0 ; no more level-up moves

MarillEvosAttacks:
	dbbw EVOLVE_LEVEL, 16, AZUMARILL
	db 0 ; no more evolutions
	dbw 1, CHARM
	dbw 3, SEISMIC_TOSS
	dbw 6, HEADBUTT
	dbw 10, BUBBLEBEAM
	dbw 15, ICE_PUNCH
	dbw 21, SUBMISSION
	dbw 28, DOUBLE_EDGE
	dbw 34, LOVELY_KISS
	dbw 36, HYDRO_PUMP
	db 0 ; no more level-up moves

AzumarillEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, CHARM
	dbw 3, SEISMIC_TOSS
	dbw 6, HEADBUTT
	dbw 10, BUBBLEBEAM
	dbw 15, ICE_PUNCH
	dbw 22, SUBMISSION
	dbw 30, DOUBLE_EDGE
	dbw 35, LOVELY_KISS
	dbw 40, HYDRO_PUMP
	db 0 ; no more level-up moves

SudowoodoEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, ROCK_THROW
	dbw 1, MIMIC
	dbw 10, FLAIL
	dbw 19, LOW_KICK
	dbw 28, ROCK_SLIDE
	dbw 37, EARTHQUAKE
	dbw 46, BODY_SLAM
	dbw 51, ANCIENTPOWER
	db 0 ; no more level-up moves

PolitoedEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, WATER_GUN
	dbw 1, HYPNOSIS
	dbw 1, DOUBLESLAP
	dbw 1, PERISH_SONG
	dbw 35, PERISH_SONG
	dbw 51, SWAGGER
	db 0 ; no more level-up moves

HoppipEvosAttacks:
	dbbw EVOLVE_LEVEL, 16, SKIPLOOM
	db 0 ; no more evolutions
	dbw 1, SPLASH
	dbw 5, SYNTHESIS
	dbw 5, TAIL_WHIP
	dbw 10, LEECH_SEED
	dbw 13, POISONPOWDER
	dbw 15, STUN_SPORE
	dbw 17, SLEEP_POWDER
	dbw 20, LEECH_SEED
	dbw 25, COTTON_SPORE
	dbw 30, GIGA_DRAIN
	dbw 38, EXPLOSION
	dbw 44, PETAL_DANCE
	db 0 ; no more level-up moves

SkiploomEvosAttacks:
	dbbw EVOLVE_LEVEL, 27, JUMPLUFF
	db 0 ; no more evolutions
	dbw 1, SPLASH
	dbw 5, SYNTHESIS
	dbw 5, TAIL_WHIP
	dbw 10, LEECH_SEED
	dbw 13, POISONPOWDER
	dbw 15, STUN_SPORE
	dbw 17, SLEEP_POWDER
	dbw 20, LEECH_SEED
	dbw 25, COTTON_SPORE
	dbw 30, GIGA_DRAIN
	dbw 38, EXPLOSION
	dbw 44, PETAL_DANCE
	db 0 ; no more level-up moves

JumpluffEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SPLASH
	dbw 5, SYNTHESIS
	dbw 5, TAIL_WHIP
	dbw 10, LEECH_SEED
	dbw 13, POISONPOWDER
	dbw 15, STUN_SPORE
	dbw 17, SLEEP_POWDER
	dbw 20, LEECH_SEED
	dbw 25, COTTON_SPORE
	dbw 30, GIGA_DRAIN
	dbw 38, EXPLOSION
	dbw 44, PETAL_DANCE
	db 0 ; no more level-up moves

AipomEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, QUICK_ATTACK
	dbw 1, TAIL_WHIP
	dbw 6, SAND_ATTACK
	dbw 12, FURY_SWIPES
	dbw 18, SWIFT
	dbw 22, SUBMISSION
	dbw 25, SHADOW_BALL
	dbw 32, SCREECH
	dbw 39, BODY_SLAM
	dbw 46, SKY_ATTACK
	dbw 51, DOUBLE_EDGE
	db 0 ; no more level-up moves

SunkernEvosAttacks:
	dbbw EVOLVE_LEVEL, 16, SUNFLORA
	db 0 ; no more evolutions
	dbw 1, ABSORB
	dbw 4, GROWTH
	dbw 10, MEGA_DRAIN
	dbw 31, SYNTHESIS
	dbw 46, GIGA_DRAIN
	db 0 ; no more level-up moves

SunfloraEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, ABSORB
	dbw 1, POUND
	dbw 4, GROWTH
	dbw 10, RAZOR_LEAF
	dbw 24, GIGA_DRAIN
	dbw 31, PETAL_DANCE
	dbw 46, SOLARBEAM
	db 0 ; no more level-up moves

YanmaEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, QUICK_ATTACK
	dbw 1, FORESIGHT
	dbw 7, SONICBOOM
	dbw 13, DOUBLE_TEAM
	dbw 19, LEECH_LIFE
	dbw 21, WING_ATTACK
	dbw 25, DETECT
	dbw 31, SUPERSONIC
	dbw 36, ANCIENTPOWER
	dbw 37, AGILITY
	dbw 43, SCREECH
	dbw 54, SKY_ATTACK
	dbw 56, FURY_CUTTER
	db 0 ; no more level-up moves

WooperEvosAttacks:
	dbbw EVOLVE_LEVEL, 20, QUAGSIRE
	db 0 ; no more evolutions
	dbw 1, WATER_GUN
	dbw 1, TAIL_WHIP
	dbw 5, MIST
	dbw 11, MAGNITUDE
	dbw 16, LOVELY_KISS
	dbw 21, BUBBLEBEAM
	dbw 23, EARTHQUAKE
	dbw 41, ROCK_SLIDE
	dbw 51, WATERFALL
	dbw 56, RECOVER
	db 0 ; no more level-up moves

QuagsireEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, WATER_GUN
	dbw 1, TAIL_WHIP
	dbw 5, MIST
	dbw 11, MAGNITUDE
	dbw 16, LOVELY_KISS
	dbw 21, BUBBLEBEAM
	dbw 31, EARTHQUAKE
	dbw 41, ROCK_SLIDE
	dbw 51, WATERFALL
	dbw 56, RECOVER
	db 0 ; no more level-up moves

EspeonEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, TAIL_WHIP
	dbw 8, SAND_ATTACK
	dbw 16, CONFUSION
	dbw 23, QUICK_ATTACK
	dbw 30, SWIFT
	dbw 36, PSYBEAM
	dbw 42, PSYCH_UP
	dbw 47, PSYCHIC_M
	dbw 52, MORNING_SUN
	db 0 ; no more level-up moves

UmbreonEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, TAIL_WHIP
	dbw 8, SAND_ATTACK
	dbw 16, PURSUIT
	dbw 23, QUICK_ATTACK
	dbw 30, CONFUSE_RAY
	dbw 36, FAINT_ATTACK
	dbw 42, MEAN_LOOK
	dbw 47, SCREECH
	dbw 52, MOONLIGHT
	db 0 ; no more level-up moves

MurkrowEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 11, PURSUIT
	dbw 16, HAZE
	dbw 23, VITAL_THROW
	dbw 26, NIGHT_SHADE
	dbw 28, WING_ATTACK
	dbw 31, FAINT_ATTACK
	dbw 39, DRILL_PECK
	dbw 41, MEAN_LOOK
	dbw 49, DESTINY_BOND
	dbw 55, PERISH_SONG
	dbw 61, SKY_ATTACK
	db 0 ; no more level-up moves

SlowkingEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, CURSE
	dbw 1, TACKLE
	dbw 6, GROWL
	dbw 15, WATER_GUN
	dbw 20, CONFUSION
	dbw 29, DISABLE
	dbw 34, HEADBUTT
	dbw 43, SWAGGER
	dbw 48, PSYCHIC_M
	db 0 ; no more level-up moves

MisdreavusEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, GROWL
	dbw 1, PSYWAVE
	dbw 6, SPITE
	dbw 12, CONFUSE_RAY
	dbw 19, MEAN_LOOK
	dbw 27, PSYBEAM
	dbw 36, PAIN_SPLIT
	dbw 46, PERISH_SONG
	db 0 ; no more level-up moves

UnownEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, HIDDEN_POWER
	db 0 ; no more level-up moves

WobbuffetEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, COUNTER
	dbw 1, MIRROR_COAT
	dbw 1, SAFEGUARD
	dbw 1, DESTINY_BOND
	db 0 ; no more level-up moves

GirafarigEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, STOMP
	dbw 1, GROWL
	dbw 7, PSYBEAM
	dbw 16, COUNTER
	dbw 20, FLAME_WHEEL
	dbw 30, BATON_PASS
	dbw 41, PSYCHIC_M
	dbw 43, HORN_ATTACK
	dbw 51, EARTHQUAKE
	dbw 58, SHADOW_BALL
	dbw 61, DOUBLE_EDGE
	dbw 65, REVERSAL
	db 0 ; no more level-up moves

PinecoEvosAttacks:
	dbbw EVOLVE_LEVEL, 29, FORRETRESS
	db 0 ; no more evolutions
	dbw 1, TAKE_DOWN
	dbw 1, PROTECT
	dbw 11, SELFDESTRUCT
	dbw 15, PIN_MISSILE
	dbw 22, RAPID_SPIN
	dbw 29, BIDE
	dbw 36, EXPLOSION
	dbw 43, SPIKES
	dbw 50, DOUBLE_EDGE
	db 0 ; no more level-up moves

ForretressEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TAKE_DOWN
	dbw 1, PROTECT
	dbw 11, SELFDESTRUCT
	dbw 15, PIN_MISSILE
	dbw 22, RAPID_SPIN
	dbw 29, BIDE
	dbw 39, EXPLOSION
	dbw 43, BODY_SLAM
	dbw 49, SPIKES
	dbw 51, BARRIER
	dbw 59, DOUBLE_EDGE
	db 0 ; no more level-up moves

DunsparceEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 5, DEFENSE_CURL
	dbw 13, GLARE
	dbw 18, SPITE
	dbw 26, RAPID_SPIN
	dbw 30, SCREECH
	dbw 38, HORN_ATTACK
	dbw 44, HEADBUTT
	dbw 59, OUTRAGE
	db 0 ; no more level-up moves

GligarEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, POISON_STING
	dbw 6, SAND_ATTACK
	dbw 13, HARDEN
	dbw 20, QUICK_ATTACK
	dbw 28, FAINT_ATTACK
	dbw 36, SLASH
	dbw 44, SCREECH
	dbw 52, GUILLOTINE
	db 0 ; no more level-up moves

SteelixEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, SCREECH
	dbw 10, BIND
	dbw 14, ROCK_THROW
	dbw 23, HARDEN
	dbw 27, RAGE
	dbw 36, SANDSTORM
	dbw 40, SLAM
	dbw 49, CRUNCH
	db 0 ; no more level-up moves

SnubbullEvosAttacks:
	dbbw EVOLVE_LEVEL, 22, GRANBULL
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, SCARY_FACE
	dbw 4, TAIL_WHIP
	dbw 8, CHARM
	dbw 13, KARATE_CHOP
	dbw 16, HEADBUTT
	dbw 19, LICK
	dbw 26, ROAR
	dbw 34, SUBMISSION
	dbw 43, DOUBLE_EDGE
	dbw 49, ROCK_SLIDE
	dbw 51, EARTHQUAKE
	dbw 55, RETURN
	db 0 ; no more level-up moves

GranbullEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, SCARY_FACE
	dbw 4, TAIL_WHIP
	dbw 8, CHARM
	dbw 13, KARATE_CHOP
	dbw 16, HEADBUTT
	dbw 19, LICK
	dbw 26, ROAR
	dbw 34, SUBMISSION
	dbw 43, DOUBLE_EDGE
	dbw 49, ROCK_SLIDE
	dbw 51, EARTHQUAKE
	dbw 55, RETURN
	db 0 ; no more level-up moves

QwilfishEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SPIKES
	dbw 1, TACKLE
	dbw 1, POISON_STING
	dbw 10, HARDEN
	dbw 10, MINIMIZE
	dbw 19, BUBBLEBEAM
	dbw 28, PIN_MISSILE
	dbw 35, SLUDGE_BOMB
	dbw 37, TAKE_DOWN
	dbw 46, HYDRO_PUMP
	dbw 49, DESTINY_BOND
	dbw 55, EXPLOSION
	db 0 ; no more level-up moves

ScizorEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, QUICK_ATTACK
	dbw 1, LEER
	dbw 6, FOCUS_ENERGY
	dbw 12, PURSUIT
	dbw 18, FALSE_SWIPE
	dbw 24, AGILITY
	dbw 30, METAL_CLAW
	dbw 36, SLASH
	dbw 42, SWORDS_DANCE
	dbw 48, DOUBLE_TEAM
	db 0 ; no more level-up moves

ShuckleEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, CONSTRICT
	dbw 1, WITHDRAW
	dbw 9, WRAP
	dbw 14, ENCORE
	dbw 23, SAFEGUARD
	dbw 28, BIDE
	dbw 37, REST
	db 0 ; no more level-up moves

HeracrossEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, LEER
	dbw 6, HORN_ATTACK
	dbw 12, ENDURE
	dbw 19, FURY_CUTTER
	dbw 27, COUNTER
	dbw 35, VITAL_THROW
	dbw 40, WING_ATTACK
	dbw 44, SUBMISSION
	dbw 54, MEGAHORN
	db 0 ; no more level-up moves

SneaselEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, LEER
	dbw 9, QUICK_ATTACK
	dbw 17, SCREECH
	dbw 25, FAINT_ATTACK
	dbw 33, FURY_SWIPES
	dbw 41, AGILITY
	dbw 49, SLASH
	dbw 57, BEAT_UP
	dbw 65, METAL_CLAW
	db 0 ; no more level-up moves

TeddiursaEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, URSARING
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, LEER
	dbw 8, LICK
	dbw 12, FURY_SWIPES
	dbw 16, HEADBUTT
	dbw 20, DIG
	dbw 24, SUBMISSION
	dbw 36, DOUBLE_EDGE
	dbw 39, SCARY_FACE
	dbw 43, EARTHQUAKE
	dbw 50, THRASH
	db 0 ; no more level-up moves

UrsaringEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, LEER
	dbw 8, LICK
	dbw 12, FURY_SWIPES
	dbw 16, HEADBUTT
	dbw 20, DIG
	dbw 24, SUBMISSION
	dbw 36, DOUBLE_EDGE
	dbw 39, SCARY_FACE
	dbw 43, EARTHQUAKE
	dbw 50, THRASH
	db 0 ; no more level-up moves

SlugmaEvosAttacks:
	dbbw EVOLVE_LEVEL, 16, MAGCARGO
	db 0 ; no more evolutions
	dbw 1, SMOG
	dbw 8, EMBER
	dbw 15, ROCK_THROW
	dbw 22, FLAME_WHEEL
	dbw 29, RECOVER
	dbw 36, FLAMETHROWER
	dbw 43, ROCK_SLIDE
	dbw 50, GIGA_DRAIN
	db 0 ; no more level-up moves

MagcargoEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SMOG
	dbw 8, EMBER
	dbw 15, ROCK_THROW
	dbw 22, FLAME_WHEEL
	dbw 29, RECOVER
	dbw 36, FLAMETHROWER
	dbw 43, ROCK_SLIDE
	dbw 50, GIGA_DRAIN
	db 0 ; no more level-up moves

SwinubEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, PILOSWINE
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, MIST
	dbw 5, MUD_SLAP
	dbw 8, ICY_WIND
	dbw 14, MIST
	dbw 18, CHARM
	dbw 22, POWDER_SNOW
	dbw 26, ICE_BEAM
	dbw 30, ANCIENTPOWER
	dbw 38, ROAR
	dbw 41, EARTHQUAKE
	db 0 ; no more level-up moves

PiloswineEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, MIST
	dbw 5, MUD_SLAP
	dbw 8, ICY_WIND
	dbw 14, MIST
	dbw 18, CHARM
	dbw 22, POWDER_SNOW
	dbw 26, ICE_BEAM
	dbw 30, ANCIENTPOWER
	dbw 38, ROAR
	dbw 41, EARTHQUAKE
	dbw 51, MEGAHORN
	db 0 ; no more level-up moves

CorsolaEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 7, HARDEN
	dbw 13, BUBBLE
	dbw 19, RECOVER
	dbw 25, BUBBLEBEAM
	dbw 31, SPIKE_CANNON
	dbw 37, MIRROR_COAT
	dbw 43, ANCIENTPOWER
	db 0 ; no more level-up moves

RemoraidEvosAttacks:
	dbbw EVOLVE_LEVEL, 21, OCTILLERY
	db 0 ; no more evolutions
	dbw 1, WATER_GUN
	dbw 11, LOCK_ON
	dbw 22, PSYBEAM
	dbw 22, AURORA_BEAM
	dbw 22, BUBBLEBEAM
	dbw 33, FOCUS_ENERGY
	dbw 44, ICE_BEAM
	dbw 55, HYPER_BEAM
	db 0 ; no more level-up moves

OctilleryEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, WATER_GUN
	dbw 11, CONSTRICT
	dbw 22, PSYBEAM
	dbw 22, AURORA_BEAM
	dbw 22, BUBBLEBEAM
	dbw 25, OCTAZOOKA
	dbw 38, FOCUS_ENERGY
	dbw 54, ICE_BEAM
	dbw 70, HYPER_BEAM
	db 0 ; no more level-up moves

DelibirdEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, PRESENT
	db 0 ; no more level-up moves

MantineEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, BUBBLE
	dbw 10, SUPERSONIC
	dbw 18, BUBBLEBEAM
	dbw 25, TAKE_DOWN
	dbw 32, AGILITY
	dbw 40, WING_ATTACK
	dbw 49, CONFUSE_RAY
	db 0 ; no more level-up moves

SkarmoryEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, LEER
	dbw 1, PECK
	dbw 13, SAND_ATTACK
	dbw 19, SWIFT
	dbw 25, AGILITY
	dbw 37, FURY_ATTACK
	dbw 49, STEEL_WING
	db 0 ; no more level-up moves

HoundourEvosAttacks:
	dbbw EVOLVE_LEVEL, 27, HOUNDOOM
	db 0 ; no more evolutions
	dbw 1, LEER
	dbw 1, EMBER
	dbw 7, BITE
	dbw 13, SMOG
	dbw 16, FLAME_WHEEL
	dbw 20, ROAR
	dbw 27, FAINT_ATTACK
	dbw 35, FLAMETHROWER
	dbw 43, CRUNCH
	dbw 48, SLUDGE_BOMB
	dbw 55, FIRE_BLAST
	db 0 ; no more level-up moves

HoundoomEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, LEER
	dbw 1, EMBER
	dbw 7, BITE
	dbw 13, SMOG
	dbw 16, FLAME_WHEEL
	dbw 20, ROAR
	dbw 27, FAINT_ATTACK
	dbw 35, FLAMETHROWER
	dbw 43, CRUNCH
	dbw 48, SLUDGE_BOMB
	dbw 55, FIRE_BLAST
	db 0 ; no more level-up moves

KingdraEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, WATER_GUN
	dbw 1, SMOKESCREEN
	dbw 1, BUBBLEBEAM
	dbw 8, SMOKESCREEN
	dbw 12, LEER
	dbw 19, TWISTER
	dbw 22, AURORA_BEAM
	dbw 25, OCTAZOOKA
	dbw 26, SAFEGUARD
	dbw 40, DRAGONBREATH
	dbw 42, ICE_BEAM
	dbw 51, HYDRO_PUMP
	db 0 ; no more level-up moves

PhanpyEvosAttacks:
	dbbw EVOLVE_LEVEL, 22, DONPHAN
	db 0 ; no more evolutions
	dbw 1, ROCK_THROW
	dbw 1, GROWL
	dbw 9, DEFENSE_CURL
	dbw 11, HEADBUTT
	dbw 17, ROLLOUT
	dbw 24, DIG
	dbw 33, SWEET_KISS
	dbw 41, ENDURE
	dbw 45, RAPID_SPIN
	dbw 49, EARTHQUAKE
	dbw 51, ROCK_SLIDE
	db 0 ; no more level-up moves

DonphanEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, HORN_ATTACK
	dbw 1, GROWL
	dbw 9, DEFENSE_CURL
	dbw 18, ROLLOUT
	dbw 25, FURY_ATTACK
	dbw 33, DIG
	dbw 38, POWDER_SNOW
	dbw 40, ENDURE
	dbw 41, RAPID_SPIN
	dbw 49, EARTHQUAKE
	dbw 51, ROCK_SLIDE
	db 0 ; no more level-up moves

Porygon2EvosAttacks:
	db 0 ; no more evolutions
	dbw 1, CONVERSION2
	dbw 1, TACKLE
	dbw 1, CONVERSION
	dbw 9, AGILITY
	dbw 12, PSYBEAM
	dbw 20, RECOVER
	dbw 24, DEFENSE_CURL
	dbw 32, LOCK_ON
	dbw 36, TRI_ATTACK
	dbw 44, ZAP_CANNON
	db 0 ; no more level-up moves

StantlerEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, HEADBUTT
	dbw 8, SCARY_FACE
	dbw 11, LICK
	dbw 15, HYPNOSIS
	dbw 19, BATON_PASS
	dbw 23, STOMP
	dbw 25, DOUBLE_KICK
	dbw 27, PSYCHIC_M
	dbw 31, SAND_ATTACK
	dbw 33, FUTURE_SIGHT
	dbw 40, DOUBLE_EDGE
	dbw 42, CONFUSE_RAY
	dbw 48, SHADOW_BALL
	dbw 50, MEGAHORN
	dbw 61, THRASH
	db 0 ; no more level-up moves

SmeargleEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SKETCH
	dbw 11, SKETCH
	dbw 21, SKETCH
	dbw 31, SKETCH
	dbw 41, SKETCH
	dbw 51, SKETCH
	dbw 61, SKETCH
	dbw 71, SKETCH
	dbw 81, SKETCH
	dbw 91, SKETCH
	db 0 ; no more level-up moves

TyrogueEvosAttacks:
	dbbbw EVOLVE_STAT, 20, ATK_LT_DEF, HITMONCHAN
	dbbbw EVOLVE_STAT, 20, ATK_GT_DEF, HITMONLEE
	dbbbw EVOLVE_STAT, 20, ATK_EQ_DEF, HITMONTOP
	db 0 ; no more evolutions
	dbw 1, TACKLE
	db 0 ; no more level-up moves

HitmontopEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, ROLLING_KICK
	dbw 7, FOCUS_ENERGY
	dbw 13, PURSUIT
	dbw 19, QUICK_ATTACK
	dbw 25, RAPID_SPIN
	dbw 31, COUNTER
	dbw 37, AGILITY
	dbw 43, DETECT
	dbw 49, TRIPLE_KICK
	db 0 ; no more level-up moves

SmoochumEvosAttacks:
	dbbw EVOLVE_LEVEL, 28, JYNX
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 1, LICK
	dbw 9, SWEET_KISS
	dbw 13, POWDER_SNOW
	dbw 21, PSYBEAM
	dbw 25, SING
	dbw 30, ICE_BEAM
	dbw 33, MEAN_LOOK
	dbw 37, PSYCHIC_M
	dbw 45, PERISH_SONG
	dbw 49, BLIZZARD
	db 0 ; no more level-up moves

ElekidEvosAttacks:
	dbbw EVOLVE_LEVEL, 28, ELECTABUZZ
	db 0 ; no more evolutions
	dbw 1, QUICK_ATTACK
	dbw 1, LEER
	dbw 9, THUNDERPUNCH
	dbw 17, ICE_PUNCH
	dbw 25, SWIFT
	dbw 33, SCREECH
	dbw 41, THUNDERBOLT
	dwb 45, CROSS_CHOP
	dbw 49, THUNDER
	db 0 ; no more level-up moves

MagbyEvosAttacks:
	dbbw EVOLVE_LEVEL, 28, MAGMAR
	db 0 ; no more evolutions
	dbw 1, EMBER
	dbw 7, LEER
	dbw 13, SMOG
	dbw 19, FIRE_PUNCH
	dbw 25, SMOKESCREEN
	dbw 31, THUNDERBOLT
	dbw 37, FLAMETHROWER
	dbw 43, CONFUSE_RAY
	dbw 49, FIRE_BLAST
	db 0 ; no more level-up moves

MiltankEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 4, GROWL
	dbw 8, DEFENSE_CURL
	dbw 13, STOMP
	dbw 19, MILK_DRINK
	dbw 26, BIDE
	dbw 34, ROLLOUT
	dbw 43, BODY_SLAM
	dbw 53, HEAL_BELL
	db 0 ; no more level-up moves

BlisseyEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 4, GROWL
	dbw 7, TAIL_WHIP
	dbw 10, SOFTBOILED
	dbw 13, DOUBLESLAP
	dbw 18, MINIMIZE
	dbw 23, SING
	dbw 28, EGG_BOMB
	dbw 33, DEFENSE_CURL
	dbw 40, LIGHT_SCREEN
	dbw 47, DOUBLE_EDGE
	db 0 ; no more level-up moves

RaikouEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, BITE
	dbw 1, LEER
	dbw 11, THUNDERSHOCK
	dbw 21, ROAR
	dbw 31, QUICK_ATTACK
	dbw 41, SPARK
	dbw 51, REFLECT
	dbw 61, CRUNCH
	dbw 71, THUNDER
	db 0 ; no more level-up moves

EnteiEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, BITE
	dbw 1, LEER
	dbw 11, EMBER
	dbw 21, ROAR
	dbw 31, FIRE_SPIN
	dbw 41, STOMP
	dbw 51, FLAMETHROWER
	dbw 61, SWAGGER
	dbw 71, FIRE_BLAST
	db 0 ; no more level-up moves

SuicuneEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, BITE
	dbw 1, LEER
	dbw 11, BUBBLEBEAM
	dbw 21, RAIN_DANCE
	dbw 31, GUST
	dbw 41, AURORA_BEAM
	dbw 51, MIST
	dbw 61, MIRROR_COAT
	dbw 71, HYDRO_PUMP
	db 0 ; no more level-up moves

LarvitarEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, PUPITAR
	db 0 ; no more evolutions
	dbw 1, BITE
	dbw 1, LEER
	dbw 8, SANDSTORM
	dbw 15, SCREECH
	dbw 22, ROCK_SLIDE
	dbw 29, THRASH
	dbw 36, SCARY_FACE
	dbw 43, CRUNCH
	dbw 50, EARTHQUAKE
	dbw 57, HYPER_BEAM
	db 0 ; no more level-up moves

PupitarEvosAttacks:
	dbbw EVOLVE_LEVEL, 55, TYRANITAR
	db 0 ; no more evolutions
	dbw 1, BITE
	dbw 1, LEER
	dbw 15, SCREECH
	dbw 22, ROCK_SLIDE
	dbw 29, THRASH
	dbw 38, SCARY_FACE
	dbw 47, CRUNCH
	dbw 56, EARTHQUAKE
	dbw 65, HYPER_BEAM
	db 0 ; no more level-up moves

TyranitarEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, BITE
	dbw 1, LEER
	dbw 1, SANDSTORM
	dbw 1, SCREECH
	dbw 8, SANDSTORM
	dbw 15, SCREECH
	dbw 22, ROCK_SLIDE
	dbw 29, THRASH
	dbw 38, SCARY_FACE
	dbw 47, CRUNCH
	dbw 61, EARTHQUAKE
	dbw 75, HYPER_BEAM
	db 0 ; no more level-up moves

LugiaEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, AEROBLAST
	dbw 11, SAFEGUARD
	dbw 22, GUST
	dbw 33, RECOVER
	dbw 44, HYDRO_PUMP
	dbw 55, RAIN_DANCE
	dbw 66, SWIFT
	dbw 77, WHIRLWIND
	dbw 88, ANCIENTPOWER
	dbw 99, FUTURE_SIGHT
	db 0 ; no more level-up moves

HoOhEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SACRED_FIRE
	dbw 11, SAFEGUARD
	dbw 22, GUST
	dbw 33, RECOVER
	dbw 44, FIRE_BLAST
	dbw 55, SUNNY_DAY
	dbw 66, SWIFT
	dbw 77, WHIRLWIND
	dbw 88, ANCIENTPOWER
	dbw 99, FUTURE_SIGHT
	db 0 ; no more level-up moves

CelebiEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, LEECH_SEED
	dbw 1, CONFUSION
	dbw 1, RECOVER
	dbw 1, HEAL_BELL
	dbw 10, SAFEGUARD
	dbw 20, ANCIENTPOWER
	dbw 30, FUTURE_SIGHT
	dbw 40, BATON_PASS
	dbw 50, PERISH_SONG
	db 0 ; no more level-up moves
