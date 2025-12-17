SECTION "Evolutions and Attacks 1", ROMX

EvosAttacksPointers1::
	dw BulbasaurEvosAttacks
	dw IvysaurEvosAttacks
	dw VenusaurEvosAttacks
	dw CharmanderEvosAttacks
	dw CharmeleonEvosAttacks
	dw CharizardEvosAttacks
	dw SquirtleEvosAttacks
	dw WartortleEvosAttacks
	dw BlastoiseEvosAttacks
	dw CaterpieEvosAttacks
	dw MetapodEvosAttacks
	dw ButterfreeEvosAttacks
	dw WeedleEvosAttacks
	dw KakunaEvosAttacks
	dw BeedrillEvosAttacks
	dw PidgeyEvosAttacks
	dw PidgeottoEvosAttacks
	dw PidgeotEvosAttacks
	dw RattataEvosAttacks
	dw RaticateEvosAttacks
	dw SpearowEvosAttacks
	dw FearowEvosAttacks
	dw EkansEvosAttacks
	dw ArbokEvosAttacks
	dw PikachuEvosAttacks
	dw RaichuEvosAttacks
	dw SandshrewEvosAttacks
	dw SandslashEvosAttacks
	dw NidoranFEvosAttacks
	dw NidorinaEvosAttacks
	dw NidoqueenEvosAttacks
	dw NidoranMEvosAttacks
	dw NidorinoEvosAttacks
	dw NidokingEvosAttacks
	dw ClefairyEvosAttacks
	dw ClefableEvosAttacks
	dw VulpixEvosAttacks
	dw NinetalesEvosAttacks
	dw JigglypuffEvosAttacks
	dw WigglytuffEvosAttacks
	dw ZubatEvosAttacks
	dw GolbatEvosAttacks
	dw OddishEvosAttacks
	dw GloomEvosAttacks
	dw VileplumeEvosAttacks
	dw ParasEvosAttacks
	dw ParasectEvosAttacks
	dw VenonatEvosAttacks
	dw VenomothEvosAttacks
	dw DiglettEvosAttacks
	dw DugtrioEvosAttacks
	dw MeowthEvosAttacks
	dw PersianEvosAttacks
	dw PsyduckEvosAttacks
	dw GolduckEvosAttacks
	dw MankeyEvosAttacks
	dw PrimeapeEvosAttacks
	dw GrowlitheEvosAttacks
	dw ArcanineEvosAttacks
	dw PoliwagEvosAttacks
	dw PoliwhirlEvosAttacks
	dw PoliwrathEvosAttacks
	dw AbraEvosAttacks
	dw KadabraEvosAttacks
	dw AlakazamEvosAttacks
	dw MachopEvosAttacks
	dw MachokeEvosAttacks
	dw MachampEvosAttacks
	dw BellsproutEvosAttacks
	dw WeepinbellEvosAttacks
	dw VictreebelEvosAttacks
	dw TentacoolEvosAttacks
	dw TentacruelEvosAttacks
	dw GeodudeEvosAttacks
	dw GravelerEvosAttacks
	dw GolemEvosAttacks
	dw PonytaEvosAttacks
	dw RapidashEvosAttacks
	dw SlowpokeEvosAttacks
	dw SlowbroEvosAttacks
	dw MagnemiteEvosAttacks
	dw MagnetonEvosAttacks
	dw FarfetchDEvosAttacks
	dw DoduoEvosAttacks
	dw DodrioEvosAttacks
	dw SeelEvosAttacks
	dw DewgongEvosAttacks
	dw GrimerEvosAttacks
	dw MukEvosAttacks
	dw ShellderEvosAttacks
	dw CloysterEvosAttacks
	dw GastlyEvosAttacks
	dw HaunterEvosAttacks
	dw GengarEvosAttacks
	dw OnixEvosAttacks
	dw DrowzeeEvosAttacks
	dw HypnoEvosAttacks
	dw KrabbyEvosAttacks
	dw KinglerEvosAttacks
	dw VoltorbEvosAttacks
	dw ElectrodeEvosAttacks
	dw ExeggcuteEvosAttacks
	dw ExeggutorEvosAttacks
	dw CuboneEvosAttacks
	dw MarowakEvosAttacks
	dw HitmonleeEvosAttacks
	dw HitmonchanEvosAttacks
	dw LickitungEvosAttacks
	dw KoffingEvosAttacks
	dw WeezingEvosAttacks
	dw RhyhornEvosAttacks
	dw RhydonEvosAttacks
	dw ChanseyEvosAttacks
	dw TangelaEvosAttacks
	dw KangaskhanEvosAttacks
	dw HorseaEvosAttacks
	dw SeadraEvosAttacks
	dw GoldeenEvosAttacks
	dw SeakingEvosAttacks
	dw StaryuEvosAttacks
	dw StarmieEvosAttacks
	dw MrMimeEvosAttacks
	dw ScytherEvosAttacks
	dw JynxEvosAttacks
	dw ElectabuzzEvosAttacks
	dw MagmarEvosAttacks
	dw PinsirEvosAttacks
	dw TaurosEvosAttacks
	dw MagikarpEvosAttacks
	dw GyaradosEvosAttacks
	dw LaprasEvosAttacks
	dw DittoEvosAttacks
	dw EeveeEvosAttacks
	dw VaporeonEvosAttacks
	dw JolteonEvosAttacks
	dw FlareonEvosAttacks
	dw PorygonEvosAttacks
	dw OmanyteEvosAttacks
	dw OmastarEvosAttacks
	dw KabutoEvosAttacks
	dw KabutopsEvosAttacks
	dw AerodactylEvosAttacks
	dw SnorlaxEvosAttacks
	dw ArticunoEvosAttacks
	dw ZapdosEvosAttacks
	dw MoltresEvosAttacks
	dw DratiniEvosAttacks
	dw DragonairEvosAttacks
	dw DragoniteEvosAttacks
	dw MewtwoEvosAttacks
	dw MewEvosAttacks
.IndirectEnd::

BulbasaurEvosAttacks:
	dbbw EVOLVE_LEVEL, 16, IVYSAUR
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 4, GROWL
	dbw 7, LEECH_SEED
	dbw 10, VINE_WHIP
	dbw 15, POISONPOWDER
	dbw 15, SLEEP_POWDER
	dbw 20, RAZOR_LEAF
	dbw 25, SWEET_SCENT
	dbw 32, GIGA_DRAIN
	dbw 39, SYNTHESIS
	dbw 46, SOLARBEAM
	db 0 ; no more level-up moves

IvysaurEvosAttacks:
	dbbw EVOLVE_LEVEL, 32, VENUSAUR
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 7, LEECH_SEED
	dbw 10, VINE_WHIP
	dbw 15, POISONPOWDER
	dbw 15, SLEEP_POWDER
	dbw 22, RAZOR_LEAF
	dbw 29, SWEET_SCENT
	dbw 38, GIGA_DRAIN
	dbw 47, SYNTHESIS
	dbw 56, SOLARBEAM
	db 0 ; no more level-up moves

VenusaurEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 1, LEECH_SEED
	dbw 1, VINE_WHIP
	dbw 4, GROWL
	dbw 7, LEECH_SEED
	dbw 10, VINE_WHIP
	dbw 15, POISONPOWDER
	dbw 15, SLEEP_POWDER
	dbw 22, RAZOR_LEAF
	dbw 29, SWEET_SCENT
	dbw 41, GIGA_DRAIN
	dbw 53, SYNTHESIS
	dbw 65, SOLARBEAM
	db 0 ; no more level-up moves

CharmanderEvosAttacks:
	dbbw EVOLVE_LEVEL, 16, CHARMELEON
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, GROWL
	dbw 7, EMBER
	dbw 13, SMOKESCREEN
	dbw 19, RAGE
	dbw 25, SCARY_FACE
	dbw 31, FLAMETHROWER
	dbw 37, SLASH
	dbw 43, DRAGON_RAGE
	dbw 49, FIRE_SPIN
	db 0 ; no more level-up moves

CharmeleonEvosAttacks:
	dbbw EVOLVE_LEVEL, 36, CHARIZARD
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, GROWL
	dbw 1, EMBER
	dbw 7, EMBER
	dbw 13, SMOKESCREEN
	dbw 20, RAGE
	dbw 27, SCARY_FACE
	dbw 34, FLAMETHROWER
	dbw 41, SLASH
	dbw 48, DRAGON_RAGE
	dbw 55, FIRE_SPIN
	db 0 ; no more level-up moves

CharizardEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, GROWL
	dbw 1, EMBER
	dbw 1, SMOKESCREEN
	dbw 7, EMBER
	dbw 13, SMOKESCREEN
	dbw 20, RAGE
	dbw 27, SCARY_FACE
	dbw 34, FLAMETHROWER
	dbw 36, WING_ATTACK
	dbw 44, SLASH
	dbw 54, DRAGON_RAGE
	dbw 64, FIRE_SPIN
	db 0 ; no more level-up moves

SquirtleEvosAttacks:
	dbbw EVOLVE_LEVEL, 16, WARTORTLE
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 4, TAIL_WHIP
	dbw 7, BUBBLE
	dbw 10, WITHDRAW
	dbw 13, WATER_GUN
	dbw 18, BITE
	dbw 23, RAPID_SPIN
	dbw 28, PROTECT
	dbw 33, RAIN_DANCE
	dbw 40, SKULL_BASH
	dbw 47, HYDRO_PUMP
	db 0 ; no more level-up moves

WartortleEvosAttacks:
	dbbw EVOLVE_LEVEL, 36, BLASTOISE
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, TAIL_WHIP
	dbw 1, BUBBLE
	dbw 4, TAIL_WHIP
	dbw 7, BUBBLE
	dbw 10, WITHDRAW
	dbw 13, WATER_GUN
	dbw 19, BITE
	dbw 25, RAPID_SPIN
	dbw 31, PROTECT
	dbw 37, RAIN_DANCE
	dbw 45, SKULL_BASH
	dbw 53, HYDRO_PUMP
	db 0 ; no more level-up moves

BlastoiseEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, TAIL_WHIP
	dbw 1, BUBBLE
	dbw 1, WITHDRAW
	dbw 4, TAIL_WHIP
	dbw 7, BUBBLE
	dbw 10, WITHDRAW
	dbw 13, WATER_GUN
	dbw 19, BITE
	dbw 25, RAPID_SPIN
	dbw 31, PROTECT
	dbw 42, RAIN_DANCE
	dbw 55, SKULL_BASH
	dbw 68, HYDRO_PUMP
	db 0 ; no more level-up moves

CaterpieEvosAttacks:
	dbbw EVOLVE_LEVEL, 7, METAPOD
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, STRING_SHOT
	db 0 ; no more level-up moves

MetapodEvosAttacks:
	dbbw EVOLVE_LEVEL, 10, BUTTERFREE
	db 0 ; no more evolutions
	dbw 1, HARDEN
	dbw 7, HARDEN
	db 0 ; no more level-up moves

ButterfreeEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, CONFUSION
	dbw 10, CONFUSION
	dbw 13, POISONPOWDER
	dbw 13, STUN_SPORE
	dbw 13, SLEEP_POWDER
	dbw 16, MEGA_DRAIN
	dbw 18, CONFUSE_RAY
	dbw 22, PSYBEAM
	dbw 23, ENCORE
	dbw 34, GIGA_DRAIN
	dbw 40, PSYCHIC_M
	dbw 48, LEECH_LIFE
	dbw 60, MORNING_SUN
	db 0 ; no more level-up moves

WeedleEvosAttacks:
	dbbw EVOLVE_LEVEL, 7, KAKUNA
	db 0 ; no more evolutions
	dbw 1, POISON_STING
	dbw 1, STRING_SHOT
	db 0 ; no more level-up moves

KakunaEvosAttacks:
	dbbw EVOLVE_LEVEL, 10, BEEDRILL
	db 0 ; no more evolutions
	dbw 1, HARDEN
	dbw 7, HARDEN
	db 0 ; no more level-up moves

BeedrillEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, FURY_ATTACK
	dbw 10, FURY_ATTACK
	dbw 15, TWINEEDLE
	dbw 20, SLUDGE_BOMB
	dbw 25, FURY_CUTTER
	dbw 30, WING_ATTACK
	dbw 32, GIGA_DRAIN
	dbw 35, PIN_MISSILE
	dbw 40, LEECH_LIFE
	dbw 43, TOXIC
	dbw 48, DRILL_PECK
	dbw 51, SLUDGE
	db 0 ; no more level-up moves

PidgeyEvosAttacks:
	dbbw EVOLVE_LEVEL, 16, PIDGEOTTO
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 5, SAND_ATTACK
	dbw 9, GUST
	dbw 12, QUICK_ATTACK
	dbw 16, WING_ATTACK
	dbw 21, WHIRLWIND
	dbw 29, STEEL_WING
	dbw 37, RETURN
	dbw 47, AEROBLAST
	db 0 ; no more level-up moves

PidgeottoEvosAttacks:
	dbbw EVOLVE_LEVEL, 36, PIDGEOT
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 5, SAND_ATTACK
	dbw 9, GUST
	dbw 12, QUICK_ATTACK
	dbw 16, WING_ATTACK
	dbw 21, WHIRLWIND
	dbw 29, STEEL_WING
	dbw 37, RETURN
	dbw 47, AEROBLAST
	db 0 ; no more level-up moves

PidgeotEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 5, SAND_ATTACK
	dbw 9, GUST
	dbw 12, QUICK_ATTACK
	dbw 16, WING_ATTACK
	dbw 21, WHIRLWIND
	dbw 30, STEEL_WING
	dbw 36, FLAMETHROWER
	dbw 40, RETURN
	dbw 50, AEROBLAST
	db 0 ; no more level-up moves

RattataEvosAttacks:
	dbbw EVOLVE_LEVEL, 20, RATICATE
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, TAIL_WHIP
	dbw 7, QUICK_ATTACK
	dbw 13, HYPER_FANG
	dbw 20, FOCUS_ENERGY
	dbw 27, CRUNCH
	dbw 31, SHADOW_BALL
	dbw 34, SUPER_FANG
	db 0 ; no more level-up moves

RaticateEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, TAIL_WHIP
	dbw 1, QUICK_ATTACK
	dbw 7, QUICK_ATTACK
	dbw 13, HYPER_FANG
	dbw 20, SCARY_FACE
	dbw 30, CRUNCH
	dbw 32, SHADOW_BALL
	dbw 40, SUPER_FANG
	db 0 ; no more level-up moves

SpearowEvosAttacks:
	dbbw EVOLVE_LEVEL, 20, FEAROW
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 1, GROWL
	dbw 7, LEER
	dbw 13, FURY_ATTACK
	dbw 16, WING_ATTACK
	dbw 24, HEADBUTT
	dbw 31, MIRROR_MOVE
	dbw 37, DRILL_PECK
	dbw 41, STEEL_WING
	dbw 43, DOUBLE_EDGE
	dbw 52, SKY_ATTACK
	db 0 ; no more level-up moves

FearowEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 1, GROWL
	dbw 7, LEER
	dbw 13, FURY_ATTACK
	dbw 16, WING_ATTACK
	dbw 24, HEADBUTT
	dbw 31, MIRROR_MOVE
	dbw 37, DRILL_PECK
	dbw 41, STEEL_WING
	dbw 45, DOUBLE_EDGE
	dbw 55, SKY_ATTACK
	db 0 ; no more level-up moves

EkansEvosAttacks:
	dbbw EVOLVE_LEVEL, 20, ARBOK
	db 0 ; no more evolutions
	dbw 1, WRAP
	dbw 1, LEER
	dbw 5, ACID
	dbw 9, TOXIC
	dbw 11, HEADBUTT
	dbw 15, BITE
	dbw 23, GLARE
	dbw 30, SLUDGE_BOMB
	dbw 29, SCREECH
	dbw 37, ACID
	dbw 43, HAZE
	dbw 44, SHADOW_BALL
	dbw 52, SLUDGE
	db 0 ; no more level-up moves

ArbokEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, WRAP
	dbw 1, LEER
	dbw 5, ACID
	dbw 9, TOXIC
	dbw 11, HEADBUTT
	dbw 15, BITE
	dbw 23, GLARE
	dbw 32, SLUDGE_BOMB
	dbw 29, SCREECH
	dbw 37, ACID
	dbw 43, HAZE
	dbw 46, SHADOW_BALL
	dbw 53, EARTHQUAKE
	dbw 66, SLUDGE
	db 0 ; no more level-up moves

PikachuEvosAttacks:
	dbbw EVOLVE_ITEM, THUNDERSTONE, RAICHU
	db 0 ; no more evolutions
	dbw 1, THUNDERSHOCK
	dbw 1, GROWL
	dbw 6, TAIL_WHIP
	dbw 8, THUNDER_WAVE
	dbw 11, QUICK_ATTACK
	dbw 15, DOUBLE_TEAM
	dbw 16, SPARK
	dbw 20, HEADBUTT
	dbw 26, THUNDERBOLT
	dbw 33, IRON_TAIL
	dbw 41, THUNDER
	dbw 50, SURF
	db 0 ; no more level-up moves

RaichuEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, THUNDER
	dbw 1, TAIL_WHIP
	dbw 1, QUICK_ATTACK
	dbw 1, THUNDERBOLT
	db 0 ; no more level-up moves

SandshrewEvosAttacks:
	dbbw EVOLVE_LEVEL, 22, SANDSLASH
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 6, DEFENSE_CURL
	dbw 8, SAND_ATTACK
	dbw 11, ROCK_THROW
	dbw 15, DIG
	dbw 15, POISON_STING
	dbw 16, SLASH
	dbw 24, ROCK_SLIDE
	dbw 37, EARTHQUAKE
	dbw 45, DOUBLE_EDGE
	db 0 ; no more level-up moves

SandslashEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, DEFENSE_CURL
	dbw 11, SAND_ATTACK
	dbw 11, POISON_STING
	dbw 24, SLASH
	dbw 29, ROCK_SLIDE
	dbw 35, RAPID_SPIN
	dbw 40, EARTHQUAKE
	dbw 52, DOUBLE_EDGE
	db 0 ; no more level-up moves

NidoranFEvosAttacks:
	dbbw EVOLVE_LEVEL, 16, NIDORINA
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, SAND_ATTACK
	dbw 12, DOUBLE_KICK
	dbw 16, POISON_STING
	dbw 24, SLASH
	dbw 27, DIG
	dbw 29, RAPID_SPIN
	dbw 31, ROCK_SLIDE
	dbw 36, EARTHQUAKE
	db 0 ; no more level-up moves

NidorinaEvosAttacks:
	dbbw EVOLVE_LEVEL, 36, NIDOQUEEN
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 12, DOUBLE_KICK
	dbw 16, HORN_ATTACK
	dbw 19, DIG
	dbw 24, SLASH
	dbw 27, SLUDGE_BOMB
	dbw 32, RAPID_SPIN
	dbw 40, ROCK_SLIDE
	dbw 46, EARTHQUAKE
	db 0 ; no more level-up moves

NidoqueenEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 12, DOUBLE_KICK
	dbw 19, DIG
	dbw 24, SLASH
	dbw 27, SLUDGE_BOMB
	dbw 32, RAPID_SPIN
	dbw 40, ROCK_SLIDE
	dbw 45, ICE_BEAM
	dbw 45, FLAMETHROWER
	dbw 45, THUNDERBOLT
	dbw 55, EARTHQUAKE
	db 0 ; no more level-up moves

NidoranMEvosAttacks:
	dbbw EVOLVE_LEVEL, 16, NIDORINO
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, SAND_ATTACK
	dbw 12, DOUBLE_KICK
	dbw 16, POISON_STING
	dbw 24, SLASH
	dbw 27, DIG
	dbw 29, RAPID_SPIN
	dbw 31, ROCK_SLIDE
	dbw 36, EARTHQUAKE
	db 0 ; no more level-up moves

NidorinoEvosAttacks:
	dbbw EVOLVE_LEVEL, 36, NIDOKING
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 12, DOUBLE_KICK
	dbw 16, HORN_ATTACK
	dbw 19, DIG
	dbw 24, SLASH
	dbw 27, SLUDGE_BOMB
	dbw 32, RAPID_SPIN
	dbw 40, ROCK_SLIDE
	dbw 46, EARTHQUAKE
	db 0 ; no more level-up moves

NidokingEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 12, DOUBLE_KICK
	dbw 19, DIG
	dbw 24, SLASH
	dbw 27, SLUDGE_BOMB
	dbw 32, RAPID_SPIN
	dbw 40, ROCK_SLIDE
	dbw 45, ICE_BEAM
	dbw 45, FLAMETHROWER
	dbw 45, THUNDERBOLT
	dbw 55, EARTHQUAKE
	db 0 ; no more level-up moves

ClefairyEvosAttacks:
	dbbw EVOLVE_LEVEL, 31, CLEFABLE
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 1, GROWL
	dbw 4, ENCORE
	dbw 8, SING
	dbw 13, DOUBLESLAP
	dbw 19, MINIMIZE
	dbw 26, DEFENSE_CURL
	dbw 34, METRONOME
	dbw 43, MOONLIGHT
	dbw 53, LIGHT_SCREEN
	db 0 ; no more level-up moves

ClefableEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SING
	dbw 1, DOUBLESLAP
	dbw 1, METRONOME
	dbw 1, MOONLIGHT
	db 0 ; no more level-up moves

VulpixEvosAttacks:
	dbbw EVOLVE_ITEM, FIRE_STONE, NINETALES
	db 0 ; no more evolutions
	dbw 1, EMBER
	dbw 1, TAIL_WHIP
	dbw 7, QUICK_ATTACK
	dbw 13, ROAR
	dbw 19, CONFUSE_RAY
	dbw 25, SAFEGUARD
	dbw 31, FLAMETHROWER
	dbw 37, FIRE_SPIN
	db 0 ; no more level-up moves

NinetalesEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, EMBER
	dbw 1, QUICK_ATTACK
	dbw 1, CONFUSE_RAY
	dbw 1, SAFEGUARD
	dbw 43, FIRE_SPIN
	db 0 ; no more level-up moves

JigglypuffEvosAttacks:
	dbbw EVOLVE_LEVEL, 31, WIGGLYTUFF
	db 0 ; no more evolutions
	dbw 1, SING
	dbw 4, DEFENSE_CURL
	dbw 9, POUND
	dbw 14, DISABLE
	dbw 19, ROLLOUT
	dbw 24, DOUBLESLAP
	dbw 29, REST
	dbw 31, LOVELY_KISS
	dbw 34, BODY_SLAM
	dbw 39, DOUBLE_EDGE
	db 0 ; no more level-up moves

WigglytuffEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SING
	dbw 4, DEFENSE_CURL
	dbw 9, POUND
	dbw 14, DISABLE
	dbw 19, ROLLOUT
	dbw 24, DOUBLESLAP
	dbw 29, REST
	dbw 31, LOVELY_KISS
	dbw 34, BODY_SLAM
	dbw 39, DOUBLE_EDGE
	db 0 ; no more level-up moves

ZubatEvosAttacks:
	dbbw EVOLVE_LEVEL, 20, GOLBAT
	db 0 ; no more evolutions
	dbw 1, LEECH_LIFE
	dbw 6, CONFUSE_RAY
	dbw 12, MEGA_DRAIN
	dbw 16, TOXIC
	dbw 19, WING_ATTACK
	dbw 34, SLUDGE_BOMB
	dbw 36, MEAN_LOOK
	dbw 46, HAZE
	dbw 54, SHADOW_BALL
	dbw 60, GIGA_DRAIN
	dbw 66, SKY_ATTACK
	db 0 ; no more level-up moves

GolbatEvosAttacks:
	dbbw EVOLVE_LEVEL, 41, CROBAT
	db 0 ; no more evolutions
	dbw 1, LEECH_LIFE
	dbw 6, CONFUSE_RAY
	dbw 12, MEGA_DRAIN
	dbw 16, TOXIC
	dbw 19, WING_ATTACK
	dbw 34, SLUDGE_BOMB
	dbw 36, MEAN_LOOK
	dbw 40, SCREECH
	dbw 46, HAZE
	dbw 54, SHADOW_BALL
	dbw 60, GIGA_DRAIN
	dbw 66, SKY_ATTACK
	db 0 ; no more level-up moves

OddishEvosAttacks:
	dbbw EVOLVE_LEVEL, 16, GLOOM
	db 0 ; no more evolutions
	dbw 1, ABSORB
	dbw 7, SWEET_SCENT
	dbw 9, ACID
	dbw 13, MEGA_DRAIN
	dbw 14, POISONPOWDER
	dbw 16, STUN_SPORE
	dbw 18, SLEEP_POWDER
	dbw 23, ACID
	dbw 29, LEECH_SEED
	dbw 32, MOONLIGHT
	dbw 39, PETAL_DANCE
	db 0 ; no more level-up moves

GloomEvosAttacks:
	dbbw EVOLVE_LEVEL, 38, VILEPLUME
	dbbw EVOLVE_ITEM, SUN_STONE, BELLOSSOM
	db 0 ; no more evolutions
	dbw 1, ABSORB
	dbw 1, SWEET_SCENT
	dbw 14, POISONPOWDER
	dbw 16, STUN_SPORE
	dbw 18, SLEEP_POWDER
	dbw 24, ACID
	dbw 29, LEECH_SEED
	dbw 35, MOONLIGHT
	dbw 40, SLUDGE_BOMB
	dbw 44, PETAL_DANCE
	db 0 ; no more level-up moves

VileplumeEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, ABSORB
	dbw 1, SWEET_SCENT
	dbw 1, STUN_SPORE
	dbw 1, PETAL_DANCE
	db 0 ; no more level-up moves

ParasEvosAttacks:
	dbbw EVOLVE_LEVEL, 19, PARASECT
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 7, STUN_SPORE
	dbw 13, POISONPOWDER
	dbw 19, LEECH_LIFE
	dbw 21, SPORE
	dbw 31, SLASH
	dbw 37, FURY_CUTTER
	dbw 43, GIGA_DRAIN
	db 0 ; no more level-up moves

ParasectEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, STUN_SPORE
	dbw 1, POISONPOWDER
	dbw 7, STUN_SPORE
	dbw 13, POISONPOWDER
	dbw 19, LEECH_LIFE
	dbw 28, SPORE
	dbw 37, SLASH
	dbw 46, FURY_CUTTER
	dbw 55, GIGA_DRAIN
	db 0 ; no more level-up moves

VenonatEvosAttacks:
	dbbw EVOLVE_LEVEL, 19, VENOMOTH
	db 0 ; no more evolutions
	dbw 1, CONFUSION
	dbw 1, DISABLE
	dbw 9, CONFUSE_RAY
	dbw 12, ACID
	dbw 16, PSYBEAM
	dbw 20, POISONPOWDER
	dbw 25, LEECH_LIFE
	dbw 28, STUN_SPORE
	dbw 32, SLUDGE_BOMB
	dbw 35, PSYBEAM
	dbw 36, SLEEP_POWDER
	dbw 41, PSYCHIC_M
	db 0 ; no more level-up moves

VenomothEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, CONFUSION
	dbw 1, DISABLE
	dbw 9, CONFUSE_RAY
	dbw 12, ACID
	dbw 16, PSYBEAM
	dbw 19, WING_ATTACK
	dbw 22, POISONPOWDER
	dbw 26, LEECH_LIFE
	dbw 28, STUN_SPORE
	dbw 32, SLUDGE_BOMB
	dbw 38, PSYBEAM
	dbw 45, SLEEP_POWDER
	dbw 52, PSYCHIC_M
	db 0 ; no more level-up moves

DiglettEvosAttacks:
	dbbw EVOLVE_LEVEL, 26, DUGTRIO
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 5, GROWL
	dbw 9, MAGNITUDE
	dbw 16, DIG
	dbw 18, SAND_ATTACK
	dbw 26, SLASH
	dbw 29, ROCK_SLIDE
	dbw 41, EARTHQUAKE
	dbw 49, FISSURE
	db 0 ; no more level-up moves

DugtrioEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TRI_ATTACK
	dbw 1, SCRATCH
	dbw 5, GROWL
	dbw 9, MAGNITUDE
	dbw 17, DIG
	dbw 25, SAND_ATTACK
	dbw 26, TRI_ATTACK
	dbw 28, SLASH
	dbw 32, ROCK_SLIDE
	dbw 49, EARTHQUAKE
	dbw 61, FISSURE
	db 0 ; no more level-up moves

MeowthEvosAttacks:
	dbbw EVOLVE_LEVEL, 20, PERSIAN
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, GROWL
	dbw 11, BITE
	dbw 16, PAY_DAY
	dbw 21, SLASH
	dbw 28, HYPNOSIS
	dbw 35, SHADOW_BALL
	dbw 41, FURY_SWIPES
	dbw 46, PSYCHIC_M
	db 0 ; no more level-up moves

PersianEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, GROWL
	dbw 11, BITE
	dbw 16, PAY_DAY
	dbw 21, SLASH
	dbw 28, HYPNOSIS
	dbw 35, SHADOW_BALL
	dbw 41, FURY_SWIPES
	dbw 46, PSYCHIC_M
	db 0 ; no more level-up moves

PsyduckEvosAttacks:
	dbbw EVOLVE_LEVEL, 24, GOLDUCK
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 5, DISABLE
	dbw 10, ENCORE
	dbw 14, BUBBLEBEAM
	dbw 16, CONFUSION
	dbw 23, SCREECH
	dbw 31, PSYCHIC_M
	dbw 40, FUTURE_SIGHT
	dbw 50, HYDRO_PUMP
	db 0 ; no more level-up moves

GolduckEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 5, DISABLE
	dbw 10, ENCORE
	dbw 14, BUBBLEBEAM
	dbw 16, CONFUSION
	dbw 23, ICE_PUNCH
	dbw 25, SCREECH
	dbw 31, PSYCHIC_M
	dbw 34, CROSS_CHOP
	dbw 40, ENCORE
	dbw 42, DISABLE
	dbw 45, FUTURE_SIGHT
	dbw 50, HYDRO_PUMP
	db 0 ; no more level-up moves

MankeyEvosAttacks:
	dbbw EVOLVE_LEVEL, 25, PRIMEAPE
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, LEER
	dbw 9, LOW_KICK
	dbw 15, KARATE_CHOP
	dbw 21, FURY_SWIPES
	dbw 27, FOCUS_ENERGY
	dbw 33, SUBMISSION
	dbw 39, CROSS_CHOP
	dbw 45, SCREECH
	dbw 51, THRASH
	db 0 ; no more level-up moves

PrimeapeEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, LEER
	dbw 1, LOW_KICK
	dbw 1, RAGE
	dbw 9, LOW_KICK
	dbw 15, KARATE_CHOP
	dbw 21, FURY_SWIPES
	dbw 27, FOCUS_ENERGY
	dbw 28, RAGE
	dbw 36, SUBMISSION
	dbw 45, CROSS_CHOP
	dbw 54, SCREECH
	dbw 63, THRASH
	db 0 ; no more level-up moves

GrowlitheEvosAttacks:
	dbbw EVOLVE_LEVEL, 32, ARCANINE
	db 0 ; no more evolutions
	dbw 1, BITE
	dbw 1, ROAR
	dbw 9, EMBER
	dbw 11, GROWL
	dbw 16, FLAME_WHEEL
	dbw 26, CRUNCH
	dbw 34, SPARK
	dbw 42, FLAMETHROWER
	dbw 45, MORNING_SUN
	dbw 50, ANCIENTPOWER
	dbw 59, FIRE_BLAST
	db 0 ; no more level-up moves

ArcanineEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, BITE
	dbw 1, ROAR
	dbw 9, EMBER
	dbw 11, GROWL
	dbw 16, FLAME_WHEEL
	dbw 26, CRUNCH
	dbw 34, SPARK
	dbw 42, FLAMETHROWER
	dbw 45, MORNING_SUN
	dbw 50, ANCIENTPOWER
	dbw 52, EXTREMESPEED
	dbw 66, FIRE_BLAST
	dbw 68, SOLARBEAM
	db 0 ; no more level-up moves

PoliwagEvosAttacks:
	dbbw EVOLVE_LEVEL, 22, POLIWHIRL
	db 0 ; no more evolutions
	dbw 1, WATER_GUN
	dbw 7, HYPNOSIS
	dbw 13, BUBBLEBEAM
	dbw 19, DOUBLESLAP
	dbw 25, PSYBEAM
	dbw 26, LOVELY_KISS
	dbw 31, BODY_SLAM
	dbw 37, ICE_BEAM
	dbw 43, HYDRO_PUMP
	db 0 ; no more level-up moves

PoliwhirlEvosAttacks:
	dbbw EVOLVE_LEVEL, 43, POLIWRATH
	dbbw EVOLVE_ITEM, KINGS_ROCK, POLITOED
	db 0 ; no more evolutions
	dbw 1, WATER_GUN
	dbw 7, HYPNOSIS
	dbw 13, BUBBLEBEAM
	dbw 19, DOUBLESLAP
	dbw 25, PSYBEAM
	dbw 27, LOVELY_KISS
	dbw 31, VITAL_THROW
	dbw 35, BODY_SLAM
	dbw 46, ICE_BEAM
	dbw 51, HYDRO_PUMP
	db 0 ; no more level-up moves

PoliwrathEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, WATER_GUN
	dbw 1, HYPNOSIS
	dbw 1, DOUBLESLAP
	dbw 43, SUBMISSION
	dbw 49, WATERFALL
	dbw 55, HYDRO_PUMP
	db 0 ; no more level-up moves

AbraEvosAttacks:
	dbbw EVOLVE_LEVEL, 22, KADABRA
	db 0 ; no more evolutions
	dbw 1, CONFUSION
	dbw 6, TELEPORT
	dbw 10, DISABLE
	db 0 ; no more level-up moves

KadabraEvosAttacks:
	dbbw EVOLVE_LEVEL, 41, ALAKAZAM
	db 0 ; no more evolutions
	dbw 1, TELEPORT
	dbw 1, CONFUSION
	dbw 10, DISABLE
	dbw 22, PSYBEAM
	dbw 26, RECOVER
	dbw 24, ICE_PUNCH
	dbw 29, FIRE_PUNCH
	dbw 38, PSYCHIC_M
	dbw 45, THUNDERPUNCH
	dbw 51, FUTURE_SIGHT
	db 0 ; no more level-up moves

AlakazamEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TELEPORT
	dbw 1, CONFUSION
	dbw 10, DISABLE
	dbw 22, PSYBEAM
	dbw 26, RECOVER
	dbw 24, ICE_PUNCH
	dbw 29, FIRE_PUNCH
	dbw 38, PSYCHIC_M
	dbw 45, THUNDERPUNCH
	dbw 51, FUTURE_SIGHT
	db 0 ; no more level-up moves

MachopEvosAttacks:
	dbbw EVOLVE_LEVEL, 22, MACHOKE
	db 0 ; no more evolutions
	dbw 1, LOW_KICK
	dbw 1, LEER
	dbw 7, ROCK_THROW
	dbw 13, KARATE_CHOP
	dbw 19, SEISMIC_TOSS
	dbw 22, VITAL_THROW
	dbw 31, ROCK_SLIDE
	dbw 37, SUBMISSION
	dbw 43, SCARY_FACE
	dbw 49, CROSS_CHOP
	db 0 ; no more level-up moves

MachokeEvosAttacks:
	dbbw EVOLVE_LEVEL, 41, MACHAMP
	db 0 ; no more evolutions
	dbw 1, LOW_KICK
	dbw 1, LEER
	dbw 7, ROCK_THROW
	dbw 13, KARATE_CHOP
	dbw 19, SEISMIC_TOSS
	dbw 22, VITAL_THROW
	dbw 31, ROCK_SLIDE
	dbw 37, SUBMISSION
	dbw 43, SCARY_FACE
	dbw 49, CROSS_CHOP
	db 0 ; no more level-up moves

MachampEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, LOW_KICK
	dbw 1, LEER
	dbw 7, ROCK_THROW
	dbw 13, KARATE_CHOP
	dbw 19, SEISMIC_TOSS
	dbw 22, VITAL_THROW
	dbw 31, ROCK_SLIDE
	dbw 37, SUBMISSION
	dbw 43, SCARY_FACE
	dbw 49, CROSS_CHOP
	dbw 60, DYNAMICPUNCH
	db 0 ; no more level-up moves

BellsproutEvosAttacks:
	dbbw EVOLVE_LEVEL, 16, WEEPINBELL
	db 0 ; no more evolutions
	dbw 1, VINE_WHIP
	dbw 6, ACID
	dbw 11, WRAP
	dbw 15, SLEEP_POWDER
	dbw 15, POISONPOWDER
	dbw 19, STUN_SPORE
	dbw 23, SWEET_SCENT
	dbw 30, GIGA_DRAIN
	dbw 37, RAZOR_LEAF
	dbw 45, SLUDGE_BOMB
	db 0 ; no more level-up moves

WeepinbellEvosAttacks:
	dbbw EVOLVE_ITEM, LEAF_STONE, VICTREEBEL
	db 0 ; no more evolutions
	dbw 1, VINE_WHIP
	dbw 1, ACID
	dbw 11, WRAP
	dbw 15, SLEEP_POWDER
	dbw 17, POISONPOWDER
	dbw 19, STUN_SPORE
	dbw 24, ACID
	dbw 33, GIGA_DRAIN
	dbw 42, RAZOR_LEAF
	dbw 54, SLUDGE_BOMB
	dbw 66, SOLARBEAM
	db 0 ; no more level-up moves

VictreebelEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SOLARBEAM
	dbw 1, SLEEP_POWDER
	dbw 1, SLUDGE
	dbw 1, RAZOR_LEAF
	db 0 ; no more level-up moves

TentacoolEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, TENTACRUEL
	db 0 ; no more evolutions
	dbw 1, POISON_STING
	dbw 6, SUPERSONIC
	dbw 12, CONSTRICT
	dbw 19, ACID
	dbw 20, BUBBLEBEAM
	dbw 22, WRAP
	dbw 27, SLUDGE_BOMB
	dbw 31, AURORA_BEAM
	dbw 36, BARRIER
	dbw 43, SCREECH
	dbw 49, HYDRO_PUMP
	db 0 ; no more level-up moves

TentacruelEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, POISON_STING
	dbw 6, SUPERSONIC
	dbw 12, CONSTRICT
	dbw 19, ACID
	dbw 20, BUBBLEBEAM
	dbw 22, WRAP
	dbw 27, SLUDGE_BOMB
	dbw 31, AURORA_BEAM
	dbw 36, BARRIER
	dbw 43, SCREECH
	dbw 49, HYDRO_PUMP
	db 0 ; no more level-up moves

GeodudeEvosAttacks:
	dbbw EVOLVE_LEVEL, 25, GRAVELER
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 6, DEFENSE_CURL
	dbw 11, ROCK_THROW
	dbw 16, MAGNITUDE
	dbw 21, SELFDESTRUCT
	dbw 26, BODY_SLAM
	dbw 28, KARATE_CHOP
	dbw 31, ROCK_SLIDE
	dbw 36, EARTHQUAKE
	dbw 41, EXPLOSION
	db 0 ; no more level-up moves

GravelerEvosAttacks:
	dbbw EVOLVE_LEVEL, 41, GOLEM
	db 0 ; no more evolutions
	dbw 1, ROLLOUT
	dbw 6, DEFENSE_CURL
	dbw 11, ROCK_THROW
	dbw 16, MAGNITUDE
	dbw 21, SELFDESTRUCT
	dbw 28, BODY_SLAM
	dbw 33, KARATE_CHOP
	dbw 35, ROCK_SLIDE
	dbw 40, EARTHQUAKE
	dbw 46, EXPLOSION
	db 0 ; no more level-up moves

GolemEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, ROLLOUT
	dbw 6, DEFENSE_CURL
	dbw 11, ROCK_THROW
	dbw 16, MAGNITUDE
	dbw 21, SELFDESTRUCT
	dbw 28, BODY_SLAM
	dbw 33, KARATE_CHOP
	dbw 35, ROCK_SLIDE
	dbw 40, EARTHQUAKE
	dbw 46, EXPLOSION
	dbw 49, SUBMISSION
	db 0 ; no more level-up moves

PonytaEvosAttacks:
	dbbw EVOLVE_LEVEL, 32, RAPIDASH
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 8, TAIL_WHIP
	dbw 13, EMBER
	dbw 16, STOMP
	dbw 26, FIRE_SPIN
	dbw 34, TAKE_DOWN
	dbw 43, FLAMETHROWER
	dbw 50, EARTHQUAKE
	dbw 53, FIRE_BLAST
	dbw 58, MEGAHORN
	db 0 ; no more level-up moves

RapidashEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 8, TAIL_WHIP
	dbw 13, EMBER
	dbw 16, STOMP
	dbw 26, FIRE_SPIN
	dbw 34, TAKE_DOWN
	dbw 43, FLAMETHROWER
	dbw 50, EARTHQUAKE
	dbw 53, FIRE_BLAST
	dbw 58, MEGAHORN
	db 0 ; no more level-up moves

SlowpokeEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, SLOWBRO
	dbbw EVOLVE_ITEM, KINGS_ROCK, SLOWKING
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 6, GROWL
	dbw 9, WATER_GUN
	dbw 15, CONFUSION
	dbw 20, DISABLE
	dbw 23, PSYBEAM
	dbw 26, BUBBLEBEAM
	dbw 28, SHADOW_BALL
	dbw 31, AURORA_BEAM
	dbw 34, PSYCHIC_M
	dbw 41, FUTURE_SIGHT
	db 0 ; no more level-up moves

SlowbroEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 6, GROWL
	dbw 9, WATER_GUN
	dbw 15, CONFUSION
	dbw 20, DISABLE
	dbw 23, PSYBEAM
	dbw 26, BUBBLEBEAM
	dbw 28, SHADOW_BALL
	dbw 31, FLAMETHROWER
	dbw 34, AURORA_BEAM
	dbw 38, PSYCHIC_M
	dbw 43, FUTURE_SIGHT
	db 0 ; no more level-up moves

MagnemiteEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, MAGNETON
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, THUNDERSHOCK
	dbw 5, SUPERSONIC
	dbw 7, SCREECH
	dbw 10, THUNDER_WAVE
	dbw 12, SPARK
	dbw 17, SONICBOOM
	dbw 19, SELFDESTRUCT
	dbw 23, FLASH
	dbw 29, THUNDERBOLT
	dbw 48, ZAP_CANNON
	dbw 58, EXPLOSION
	db 0 ; no more level-up moves

MagnetonEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, THUNDERSHOCK
	dbw 5, SUPERSONIC
	dbw 7, SCREECH
	dbw 10, THUNDER_WAVE
	dbw 12, SPARK
	dbw 17, SONICBOOM
	dbw 19, SELFDESTRUCT
	dbw 23, FLASH
	dbw 29, THUNDERBOLT
	dbw 30, TRI_ATTACK
	dbw 48, ZAP_CANNON
	dbw 58, EXPLOSION
	db 0 ; no more level-up moves

FarfetchDEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 7, SAND_ATTACK
	dbw 13, LEER
	dbw 19, FURY_ATTACK
	dbw 23, KARATE_CHOP
	dbw 25, WING_ATTACK
	dbw 29, RAZOR_LEAF
	dbw 32, SLASH
	dbw 40, CROSS_CHOP
	dbw 51, SKY_ATTACK
	db 0 ; no more level-up moves

DoduoEvosAttacks:
	dbbw EVOLVE_LEVEL, 31, DODRIO
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 1, GROWL
	dbw 9, PURSUIT
	dbw 13, FURY_ATTACK
	dbw 21, TRI_ATTACK
	dbw 25, RAGE
	dbw 33, DRILL_PECK
	dbw 37, AGILITY
	db 0 ; no more level-up moves

DodrioEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 1, GROWL
	dbw 1, PURSUIT
	dbw 1, FURY_ATTACK
	dbw 9, PURSUIT
	dbw 13, FURY_ATTACK
	dbw 21, TRI_ATTACK
	dbw 25, RAGE
	dbw 38, DRILL_PECK
	dbw 47, AGILITY
	db 0 ; no more level-up moves

SeelEvosAttacks:
	dbbw EVOLVE_LEVEL, 34, DEWGONG
	db 0 ; no more evolutions
	dbw 1, HEADBUTT
	dbw 5, CHARM
	dbw 10, AURORA_BEAM
	dbw 14, BUBBLEBEAM
	dbw 30, ENCORE
	dbw 36, DRILL_PECK
	dbw 37, ICE_BEAM
	dbw 48, SAFEGUARD
	dbw 52, BLIZZARD
	db 0 ; no more level-up moves

DewgongEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, HEADBUTT
	dbw 5, CHARM
	dbw 10, AURORA_BEAM
	dbw 14, BUBBLEBEAM
	dbw 30, ENCORE
	dbw 39, DRILL_PECK
	dbw 40, ICE_BEAM
	dbw 50, SAFEGUARD
	dbw 60, BLIZZARD
	db 0 ; no more level-up moves

GrimerEvosAttacks:
	dbbw EVOLVE_LEVEL, 38, MUK
	db 0 ; no more evolutions
	dbw 1, POISON_GAS
	dbw 1, POUND
	dbw 5, HARDEN
	dbw 10, DISABLE
	dbw 16, SLUDGE
	dbw 23, MINIMIZE
	dbw 31, SCREECH
	dbw 40, ACID_ARMOR
	dbw 50, SLUDGE_BOMB
	db 0 ; no more level-up moves

MukEvosAttacks:
	db 0 ; no more evolutions
	; moves are not sorted by level
	dbw 1, POISON_GAS
	dbw 1, POUND
	dbw 1, HARDEN
	dbw 33, HARDEN
	dbw 37, DISABLE
	dbw 45, SLUDGE
	dbw 23, MINIMIZE
	dbw 31, SCREECH
	dbw 45, ACID_ARMOR
	dbw 60, SLUDGE_BOMB
	db 0 ; no more level-up moves

ShellderEvosAttacks:
	dbbw EVOLVE_LEVEL, 22, CLOYSTER
	db 0 ; no more evolutions
	dbw 1, WATER_GUN
	dbw 1, WITHDRAW
	dbw 9, CONFUSE_RAY
	dbw 16, AURORA_BEAM
	dbw 20, BUBBLEBEAM
	dbw 25, PROTECT
	dbw 33, BUBBLEBEAM
	dbw 41, CLAMP
	dbw 49, ICE_BEAM
	db 0 ; no more level-up moves

CloysterEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, WATER_GUN
	dbw 1, WITHDRAW
	dbw 9, CONFUSE_RAY
	dbw 16, AURORA_BEAM
	dbw 20, BUBBLEBEAM
	dbw 25, PROTECT
	dbw 33, SPIKES
	dbw 35, CLAMP
	dbw 41, RAPID_SPIN
	dbw 42, ICE_BEAM
	dbw 50, SPIKE_CANNON
	dbw 54, EXPLOSION
	db 0 ; no more level-up moves

GastlyEvosAttacks:
	dbbw EVOLVE_LEVEL, 25, HAUNTER
	db 0 ; no more evolutions
	dbw 1, HYPNOSIS
	dbw 1, LICK
	dbw 8, SPITE
	dbw 13, MEAN_LOOK
	dbw 16, CURSE
	dbw 21, NIGHT_SHADE
	dbw 25, SHADOW_BALL
	dbw 28, SLUDGE_BOMB
	dbw 31, CONFUSE_RAY
	dbw 39, DREAM_EATER
	dbw 41, PSYCHIC_M
	dbw 48, DESTINY_BOND
	db 0 ; no more level-up moves

HaunterEvosAttacks:
	dbbw EVOLVE_LEVEL, 55, GENGAR
	db 0 ; no more evolutions
	dbw 1, HYPNOSIS
	dbw 1, LICK
	dbw 8, SPITE
	dbw 13, MEAN_LOOK
	dbw 16, CURSE
	dbw 21, NIGHT_SHADE
	dbw 25, SHADOW_BALL
	dbw 28, SLUDGE_BOMB
	dbw 31, CONFUSE_RAY
	dbw 39, DREAM_EATER
	dbw 41, PSYCHIC_M
	dbw 48, DESTINY_BOND
	db 0 ; no more level-up moves

GengarEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, HYPNOSIS
	dbw 1, LICK
	dbw 8, SPITE
	dbw 13, MEAN_LOOK
	dbw 16, CURSE
	dbw 21, NIGHT_SHADE
	dbw 25, SHADOW_BALL
	dbw 28, SLUDGE_BOMB
	dbw 31, CONFUSE_RAY
	dbw 39, DREAM_EATER
	dbw 41, PSYCHIC_M
	dbw 48, DESTINY_BOND
	db 0 ; no more level-up moves

OnixEvosAttacks:
	dbbw EVOLVE_ITEM, METAL_COAT, STEELIX
	db 0 ; no more evolutions
	dbw 1, MAGNITUDE
	dbw 1, SCREECH
	dbw 10, BIND
	dbw 14, ROCK_SLIDE
	dbw 23, HARDEN
	dbw 27, RAGE
	dbw 36, EARTHQUAKE
	dbw 40, SLAM
	db 0 ; no more level-up moves

DrowzeeEvosAttacks:
	dbbw EVOLVE_LEVEL, 26, HYPNO
	db 0 ; no more evolutions
	dbw 1, PSYBEAM
	dbw 1, HYPNOSIS
	dbw 10, DISABLE
	dbw 18, FAINT_ATTACK
	dbw 21, DREAM_EATER
	dbw 25, SHADOW_BALL
	dbw 31, POISON_GAS
	dbw 36, SUBMISSION
	dbw 40, PSYCHIC_M
	dbw 43, THIEF
	dbw 46, PSYCH_UP
	dbw 49, FUTURE_SIGHT
	db 0 ; no more level-up moves

HypnoEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, PSYBEAM
	dbw 1, HYPNOSIS
	dbw 10, DISABLE
	dbw 18, FAINT_ATTACK
	dbw 21, DREAM_EATER
	dbw 25, SHADOW_BALL
	dbw 31, POISON_GAS
	dbw 36, SUBMISSION
	dbw 40, PSYCHIC_M
	dbw 43, THIEF
	dbw 46, PSYCH_UP
	dbw 49, FUTURE_SIGHT
	dbw 55, NIGHTMARE
	db 0 ; no more level-up moves

KrabbyEvosAttacks:
	dbbw EVOLVE_LEVEL, 22, KINGLER
	db 0 ; no more evolutions
	dbw 1, BUBBLE
	dbw 5, LEER
	dbw 12, VICEGRIP
	dbw 16, HARDEN
	dbw 20, SUBMISSION
	dbw 23, STOMP
	dbw 27, GUILLOTINE
	dbw 34, PROTECT
	dbw 37, DOUBLE_EDGE
	dbw 41, CRABHAMMER
	db 0 ; no more level-up moves

KinglerEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, BUBBLE
	dbw 1, LEER
	dbw 1, VICEGRIP
	dbw 5, LEER
	dbw 12, VICEGRIP
	dbw 16, HARDEN
	dbw 20, SUBMISSION
	dbw 23, STOMP
	dbw 27, GUILLOTINE
	dbw 38, PROTECT
	dbw 40, DOUBLE_EDGE
	dbw 49, CRABHAMMER
	db 0 ; no more level-up moves

VoltorbEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, ELECTRODE
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 9, SCREECH
	dbw 17, SONICBOOM
	dbw 23, SELFDESTRUCT
	dbw 29, ROLLOUT
	dbw 33, LIGHT_SCREEN
	dbw 37, SWIFT
	dbw 39, EXPLOSION
	dbw 41, MIRROR_COAT
	db 0 ; no more level-up moves

ElectrodeEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, SCREECH
	dbw 1, SONICBOOM
	dbw 1, SELFDESTRUCT
	dbw 9, SCREECH
	dbw 17, SONICBOOM
	dbw 23, SELFDESTRUCT
	dbw 29, ROLLOUT
	dbw 34, LIGHT_SCREEN
	dbw 40, SWIFT
	dbw 44, EXPLOSION
	dbw 48, MIRROR_COAT
	db 0 ; no more level-up moves

ExeggcuteEvosAttacks:
	dbbw EVOLVE_LEVEL, 28, EXEGGUTOR
	db 0 ; no more evolutions
	dbw 1, CONFUSION
	dbw 1, SLEEP_POWDER
	dbw 7, MEGA_DRAIN
	dbw 13, LEECH_SEED
	dbw 19, POISONPOWDER
	dbw 21, PSYBEAM
	dbw 25, STUN_SPORE
	dbw 31, GIGA_DRAIN
	dbw 37, PSYCHIC_M
	dbw 43, SOLARBEAM
	db 0 ; no more level-up moves

ExeggutorEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, CONFUSION
	dbw 1, SLEEP_POWDER
	dbw 7, MEGA_DRAIN
	dbw 13, LEECH_SEED
	dbw 19, POISONPOWDER
	dbw 21, PSYBEAM
	dbw 25, STUN_SPORE
	dbw 31, GIGA_DRAIN
	dbw 37, PSYCHIC_M
	dbw 43, SOLARBEAM
	db 0 ; no more level-up moves

CuboneEvosAttacks:
	dbbw EVOLVE_LEVEL, 28, MAROWAK
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 5, TAIL_WHIP
	dbw 9, BONE_CLUB
	dbw 13, HEADBUTT
	dbw 17, SCARY_FACE
	dbw 21, ROCK_SLIDE
	dbw 25, BONE_RUSH
	dbw 29, SHADOW_BALL
	dbw 33, SUBMISSION
	dbw 37, DOUBLE_EDGE
	dbw 41, BONEMERANG
	db 0 ; no more level-up moves

MarowakEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 5, TAIL_WHIP
	dbw 9, BONE_CLUB
	dbw 13, HEADBUTT
	dbw 17, SCARY_FACE
	dbw 21, ROCK_SLIDE
	dbw 25, BONE_RUSH
	dbw 29, SHADOW_BALL
	dbw 33, SUBMISSION
	dbw 37, DOUBLE_EDGE
	dbw 41, BONEMERANG
	db 0 ; no more level-up moves

HitmonleeEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, DOUBLE_KICK
	dbw 6, MEDITATE
	dbw 11, ROLLING_KICK
	dbw 16, JUMP_KICK
	dbw 21, FOCUS_ENERGY
	dbw 26, HI_JUMP_KICK
	dbw 31, MIND_READER
	dbw 36, FORESIGHT
	dbw 41, ENDURE
	dbw 46, MEGA_KICK
	dbw 51, REVERSAL
	db 0 ; no more level-up moves

HitmonchanEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, COMET_PUNCH
	dbw 7, AGILITY
	dbw 13, PURSUIT
	dbw 26, THUNDERPUNCH
	dbw 26, ICE_PUNCH
	dbw 26, FIRE_PUNCH
	dbw 32, MACH_PUNCH
	dbw 38, MEGA_PUNCH
	dbw 44, DETECT
	dbw 50, COUNTER
	db 0 ; no more level-up moves

LickitungEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, LICK
	dbw 7, SUPERSONIC
	dbw 13, DEFENSE_CURL
	dbw 19, STOMP
	dbw 25, WRAP
	dbw 31, DISABLE
	dbw 37, SLAM
	dbw 43, SCREECH
	db 0 ; no more level-up moves

KoffingEvosAttacks:
	dbbw EVOLVE_LEVEL, 35, WEEZING
	db 0 ; no more evolutions
	dbw 1, POISON_GAS
	dbw 1, TACKLE
	dbw 9, SMOG
	dbw 17, SELFDESTRUCT
	dbw 21, SLUDGE
	dbw 25, SMOKESCREEN
	dbw 33, HAZE
	dbw 41, EXPLOSION
	dbw 45, DESTINY_BOND
	db 0 ; no more level-up moves

WeezingEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, POISON_GAS
	dbw 1, TACKLE
	dbw 1, SMOG
	dbw 1, SELFDESTRUCT
	dbw 9, SMOG
	dbw 17, SELFDESTRUCT
	dbw 21, SLUDGE
	dbw 25, SMOKESCREEN
	dbw 33, HAZE
	dbw 44, EXPLOSION
	dbw 51, DESTINY_BOND
	db 0 ; no more level-up moves

RhyhornEvosAttacks:
	dbbw EVOLVE_LEVEL, 42, RHYDON
	db 0 ; no more evolutions
	dbw 1, HORN_ATTACK
	dbw 1, MAGNITUDE
	dbw 8, STOMP
	dbw 13, ROCK_THROW
	dbw 19, HEADBUTT
	dbw 22, ROCK_SLIDE
	dbw 33, HORN_DRILL
	dbw 41, SCARY_FACE
	dbw 46, EARTHQUAKE
	db 0 ; no more level-up moves

RhydonEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, HORN_ATTACK
	dbw 1, MAGNITUDE
	dbw 8, STOMP
	dbw 13, ROCK_THROW
	dbw 19, HEADBUTT
	dbw 22, ROCK_SLIDE
	dbw 33, HORN_DRILL
	dbw 41, SCARY_FACE
	dbw 46, EARTHQUAKE
	db 0 ; no more level-up moves

ChanseyEvosAttacks:
	dbbw EVOLVE_HAPPINESS, TR_ANYTIME, BLISSEY
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 5, GROWL
	dbw 9, TAIL_WHIP
	dbw 13, SOFTBOILED
	dbw 17, DOUBLESLAP
	dbw 23, MINIMIZE
	dbw 29, SING
	dbw 35, EGG_BOMB
	dbw 41, DEFENSE_CURL
	dbw 49, LIGHT_SCREEN
	dbw 57, DOUBLE_EDGE
	db 0 ; no more level-up moves

TangelaEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, CONSTRICT
	dbw 4, SLEEP_POWDER
	dbw 10, ABSORB
	dbw 13, POISONPOWDER
	dbw 19, VINE_WHIP
	dbw 25, BIND
	dbw 31, MEGA_DRAIN
	dbw 34, STUN_SPORE
	dbw 40, SLAM
	dbw 46, GROWTH
	db 0 ; no more level-up moves

KangaskhanEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, COMET_PUNCH
	dbw 7, LEER
	dbw 13, BITE
	dbw 19, TAIL_WHIP
	dbw 25, MEGA_PUNCH
	dbw 31, RAGE
	dbw 37, ENDURE
	dbw 43, DIZZY_PUNCH
	dbw 49, REVERSAL
	db 0 ; no more level-up moves

HorseaEvosAttacks:
	dbbw EVOLVE_LEVEL, 23, SEADRA
	db 0 ; no more evolutions
	dbw 1, WATER_GUN
	dbw 1, SMOKESCREEN
	dbw 1, BUBBLEBEAM
	dbw 8, SMOKESCREEN
	dbw 12, LEER
	dbw 19, TWISTER
	dbw 22, AURORA_BEAM
	dbw 25, OCTOZOOKA
	dbw 26, SAFEGUARD
	dbw 40, DRAGONBREATH
	dbw 42, ICE_BEAM
	dbw 51, HYDRO_PUMP
	db 0 ; no more level-up moves

SeadraEvosAttacks:
	dbbw EVOLVE_ITEM, DRAGON_SCALE, KINGDRA
	db 0 ; no more evolutions
	dbw 1, WATER_GUN
	dbw 1, SMOKESCREEN
	dbw 1, BUBBLEBEAM
	dbw 8, SMOKESCREEN
	dbw 12, LEER
	dbw 19, TWISTER
	dbw 22, AURORA_BEAM
	dbw 25, OCTOZOOKA
	dbw 26, SAFEGUARD
	dbw 40, DRAGONBREATH
	dbw 42, ICE_BEAM
	dbw 51, HYDRO_PUMP
	db 0 ; no more level-up moves

GoldeenEvosAttacks:
	dbbw EVOLVE_LEVEL, 21, SEAKING
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 1, TAIL_WHIP
	dbw 10, SUPERSONIC
	dbw 15, HORN_ATTACK
	dbw 18, WATERFALL
	dbw 22, FLAIL
	dbw 25, DRILL_PECK
	dbw 29, FURY_ATTACK
	dbw 31, ICE_BEAM
	dbw 38, MEGAHORN
	dbw 43, HORN_DRILL
	dbw 52, HYDRO_PUMP
	dbw 54, BLIZZARD
	db 0 ; no more level-up moves

SeakingEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 1, TAIL_WHIP
	dbw 10, SUPERSONIC
	dbw 15, HORN_ATTACK
	dbw 18, WATERFALL
	dbw 22, FLAIL
	dbw 25, DRILL_PECK
	dbw 29, FURY_ATTACK
	dbw 31, ICE_BEAM
	dbw 38, MEGAHORN
	dbw 43, HORN_DRILL
	dbw 52, HYDRO_PUMP
	dbw 54, BLIZZARD
	db 0 ; no more level-up moves

StaryuEvosAttacks:
	dbbw EVOLVE_ITEM, WATER_STONE, STARMIE
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, HARDEN
	dbw 7, WATER_GUN
	dbw 13, RAPID_SPIN
	dbw 19, RECOVER
	dbw 25, SWIFT
	dbw 31, BUBBLEBEAM
	dbw 37, MINIMIZE
	dbw 43, LIGHT_SCREEN
	dbw 50, HYDRO_PUMP
	db 0 ; no more level-up moves

StarmieEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, RAPID_SPIN
	dbw 1, RECOVER
	dbw 1, BUBBLEBEAM
	dbw 37, CONFUSE_RAY
	db 0 ; no more level-up moves

MrMimeEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, BARRIER
	dbw 6, CONFUSION
	dbw 11, SUBSTITUTE
	dbw 16, MEDITATE
	dbw 21, DOUBLESLAP
	dbw 26, LIGHT_SCREEN
	dbw 26, REFLECT
	dbw 31, ENCORE
	dbw 36, PSYBEAM
	dbw 41, BATON_PASS
	dbw 46, SAFEGUARD
	db 0 ; no more level-up moves

ScytherEvosAttacks:
	dbbw EVOLVE_ITEM, METAL_COAT, SCIZOR
	db 0 ; no more evolutions
	dbw 1, QUICK_ATTACK
	dbw 1, LEER
	dbw 6, FOCUS_ENERGY
	dbw 12, PURSUIT
	dbw 18, FALSE_SWIPE
	dbw 22, FURY_CUTTER
	dbw 24, WING_ATTACK
	dbw 36, SLASH
	dbw 52, SKY_ATTACK
	dbw 58, DOUBLE_TEAM
	db 0 ; no more level-up moves

JynxEvosAttacks:
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

ElectabuzzEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, QUICK_ATTACK
	dbw 1, LEER
	dbw 9, THUNDERPUNCH
	dbw 17, ICE_PUNCH
	dbw 25, SWIFT
	dbw 33, SCREECH
	dbw 41, THUNDERBOLT
	dwb 45, CROSS_CHOP
	dbw 49, THUNDER	db 0 ; no more level-up moves

MagmarEvosAttacks:
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

PinsirEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, VICEGRIP
	dbw 7, FOCUS_ENERGY
	dbw 13, SCARY_FACE
	dbw 19, SEISMIC_TOSS
	dbw 25, VITAL_THROW
	dbw 27, FURY_CUTTER
	dbw 31, GUILLOTINE
	dbw 37, SUBMISSION
	dbw 43, MEGAHORN
	db 0 ; no more level-up moves

TaurosEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 4, TAIL_WHIP
	dbw 8, RAGE
	dbw 13, HORN_ATTACK
	dbw 19, SCARY_FACE
	dbw 26, PURSUIT
	dbw 34, REST
	dbw 43, THRASH
	dbw 53, TAKE_DOWN
	db 0 ; no more level-up moves

MagikarpEvosAttacks:
	dbbw EVOLVE_LEVEL, 20, GYARADOS
	db 0 ; no more evolutions
	dbw 1, SPLASH
	dbw 15, TACKLE
	dbw 30, FLAIL
	db 0 ; no more level-up moves

GyaradosEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, THRASH
	dbw 20, BITE
	dbw 25, DRAGON_RAGE
	dbw 30, LEER
	dbw 35, TWISTER
	dbw 40, HYDRO_PUMP
	dbw 45, RAIN_DANCE
	dbw 50, HYPER_BEAM
	db 0 ; no more level-up moves

LaprasEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, WATER_GUN
	dbw 1, GROWL
	dbw 1, SING
	dbw 8, MIST
	dbw 15, BODY_SLAM
	dbw 22, CONFUSE_RAY
	dbw 29, PERISH_SONG
	dbw 36, ICE_BEAM
	dbw 43, RAIN_DANCE
	dbw 50, SAFEGUARD
	dbw 57, HYDRO_PUMP
	db 0 ; no more level-up moves

DittoEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TRANSFORM
	db 0 ; no more level-up moves

EeveeEvosAttacks:
	dbbw EVOLVE_ITEM, THUNDERSTONE, JOLTEON
	dbbw EVOLVE_ITEM, WATER_STONE, VAPOREON
	dbbw EVOLVE_ITEM, FIRE_STONE, FLAREON
	dbbw EVOLVE_HAPPINESS, TR_MORNDAY, ESPEON
	dbbw EVOLVE_HAPPINESS, TR_NITE, UMBREON
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, TAIL_WHIP
	dbw 8, SAND_ATTACK
	dbw 16, GROWL
	dbw 23, QUICK_ATTACK
	dbw 30, BITE
	dbw 36, BATON_PASS
	dbw 42, TAKE_DOWN
	db 0 ; no more level-up moves

VaporeonEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, TAIL_WHIP
	dbw 8, SAND_ATTACK
	dbw 16, WATER_GUN
	dbw 23, QUICK_ATTACK
	dbw 30, BITE
	dbw 36, AURORA_BEAM
	dbw 42, HAZE
	dbw 47, ACID_ARMOR
	dbw 52, HYDRO_PUMP
	db 0 ; no more level-up moves

JolteonEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, TAIL_WHIP
	dbw 8, SAND_ATTACK
	dbw 16, THUNDERSHOCK
	dbw 23, QUICK_ATTACK
	dbw 30, DOUBLE_KICK
	dbw 36, PIN_MISSILE
	dbw 42, THUNDER_WAVE
	dbw 47, AGILITY
	dbw 52, THUNDER
	db 0 ; no more level-up moves

FlareonEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, TAIL_WHIP
	dbw 8, SAND_ATTACK
	dbw 16, EMBER
	dbw 23, QUICK_ATTACK
	dbw 30, BITE
	dbw 36, FIRE_SPIN
	dbw 42, SMOG
	dbw 47, LEER
	dbw 52, FLAMETHROWER
	db 0 ; no more level-up moves

PorygonEvosAttacks:
	dbbw EVOLVE_ITEM, UP_GRADE, PORYGON2
	db 0 ; no more evolutions
	dbw 1, CONVERSION2
	dbw 1, TACKLE
	dbw 1, CONVERSION
	dbw 9, AGILITY
	dbw 12, PSYBEAM
	dbw 20, RECOVER
	dbw 24, SHARPEN
	dbw 32, LOCK_ON
	dbw 36, TRI_ATTACK
	dbw 44, ZAP_CANNON
	db 0 ; no more level-up moves

OmanyteEvosAttacks:
	dbbw EVOLVE_LEVEL, 40, OMASTAR
	db 0 ; no more evolutions
	dbw 1, BUBBLE
	dbw 1, HARDEN
	dbw 9, AURORA_BEAM
	dbw 11, BUBBLEBEAM
	dbw 14, ROCK_SLIDE
	dbw 22, CRUNCH
	dbw 28, PROTECT
	dbw 37, GIGA_DRAIN
	dbw 46, ICE_BEAM
	dbw 55, ANCIENTPOWER
	dbw 62, SPIKES
	db 0 ; no more level-up moves

OmastarEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, BUBBLE
	dbw 1, HARDEN
	dbw 9, AURORA_BEAM
	dbw 11, BUBBLEBEAM
	dbw 14, ROCK_SLIDE
	dbw 22, CRUNCH
	dbw 28, PROTECT
	dbw 37, GIGA_DRAIN
	dbw 46, ICE_BEAM
	dbw 55, ANCIENTPOWER
	dbw 62, SPIKES
	db 0 ; no more level-up moves

KabutoEvosAttacks:
	dbbw EVOLVE_LEVEL, 40, KABUTOPS
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, HARDEN
	dbw 9, MEGA_DRAIN
	dbw 11, BUBBLEBEAM
	dbw 14, ROCK_THROW
	dbw 22, DIG
	dbw 28, SLASH
	dbw 37, ROCK_SLIDE
	dbw 46, FURY_CUTTER
	dbw 55, ANCIENTPOWER
	dbw 62, CRABHAMMER
	db 0 ; no more level-up moves

KabutopsEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, HARDEN
	dbw 9, MEGA_DRAIN
	dbw 11, BUBBLEBEAM
	dbw 14, ROCK_THROW
	dbw 22, DIG
	dbw 28, SLASH
	dbw 37, ROCK_SLIDE
	dbw 46, FURY_CUTTER
	dbw 55, ANCIENTPOWER
	dbw 62, CRABHAMMER
	db 0 ; no more level-up moves

AerodactylEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, WING_ATTACK
	dbw 8, AGILITY
	dbw 15, BITE
	dbw 22, SUPERSONIC
	dbw 29, ANCIENTPOWER
	dbw 36, SCARY_FACE
	dbw 43, TAKE_DOWN
	dbw 50, HYPER_BEAM
	db 0 ; no more level-up moves

SnorlaxEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 8, AMNESIA
	dbw 15, DEFENSE_CURL
	dbw 22, BELLY_DRUM
	dbw 29, HEADBUTT
	dbw 36, SNORE
	dbw 36, REST
	dbw 43, BODY_SLAM
	dbw 50, ROLLOUT
	dbw 57, HYPER_BEAM
	db 0 ; no more level-up moves

ArticunoEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, GUST
	dbw 1, POWDER_SNOW
	dbw 13, MIST
	dbw 25, AGILITY
	dbw 37, MIND_READER
	dbw 49, ICE_BEAM
	dbw 61, REFLECT
	dbw 73, BLIZZARD
	db 0 ; no more level-up moves

ZapdosEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 1, THUNDERSHOCK
	dbw 13, THUNDER_WAVE
	dbw 25, AGILITY
	dbw 37, DETECT
	dbw 49, DRILL_PECK
	dbw 61, LIGHT_SCREEN
	dbw 73, THUNDER
	db 0 ; no more level-up moves

MoltresEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, WING_ATTACK
	dbw 1, EMBER
	dbw 13, FIRE_SPIN
	dbw 25, AGILITY
	dbw 37, ENDURE
	dbw 49, FLAMETHROWER
	dbw 61, SAFEGUARD
	dbw 73, SKY_ATTACK
	db 0 ; no more level-up moves

DratiniEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, DRAGONAIR
	db 0 ; no more evolutions
	dbw 1, WRAP
	dbw 1, LEER
	dbw 8, THUNDER_WAVE
	dbw 15, TWISTER
	dbw 22, DRAGON_RAGE
	dbw 29, SLAM
	dbw 36, AGILITY
	dbw 43, SAFEGUARD
	dbw 50, OUTRAGE
	dbw 57, HYPER_BEAM
	db 0 ; no more level-up moves

DragonairEvosAttacks:
	dbbw EVOLVE_LEVEL, 55, DRAGONITE
	db 0 ; no more evolutions
	dbw 1, WRAP
	dbw 1, LEER
	dbw 1, THUNDER_WAVE
	dbw 1, TWISTER
	dbw 8, THUNDER_WAVE
	dbw 15, TWISTER
	dbw 22, DRAGON_RAGE
	dbw 29, SLAM
	dbw 38, AGILITY
	dbw 47, SAFEGUARD
	dbw 56, OUTRAGE
	dbw 65, HYPER_BEAM
	db 0 ; no more level-up moves

DragoniteEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, WRAP
	dbw 1, LEER
	dbw 1, THUNDER_WAVE
	dbw 1, TWISTER
	dbw 8, THUNDER_WAVE
	dbw 15, TWISTER
	dbw 22, DRAGON_RAGE
	dbw 29, SLAM
	dbw 38, AGILITY
	dbw 47, SAFEGUARD
	dbw 55, WING_ATTACK
	dbw 61, OUTRAGE
	dbw 75, HYPER_BEAM
	db 0 ; no more level-up moves

MewtwoEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, CONFUSION
	dbw 1, DISABLE
	dbw 11, BARRIER
	dbw 22, SWIFT
	dbw 33, PSYCH_UP
	dbw 44, FUTURE_SIGHT
	dbw 55, MIST
	dbw 66, PSYCHIC_M
	dbw 77, AMNESIA
	dbw 88, RECOVER
	dbw 99, SAFEGUARD
	db 0 ; no more level-up moves

MewEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 10, TRANSFORM
	dbw 20, MEGA_PUNCH
	dbw 30, METRONOME
	dbw 40, PSYCHIC_M
	dbw 50, ANCIENTPOWER
	db 0 ; no more level-up moves