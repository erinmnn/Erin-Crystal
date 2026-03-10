	object_const_def
	const TINTOWER6F_ROCKET
	const TINTOWER6F_SAGE
	const TINTOWER6F_POKE_BALL

TinTower6F_MapScripts:
	def_scene_scripts

	def_callbacks

TinTowerExecutive:
	showemote EMOTE_SHOCK, TINTOWER6F_ROCKET, 15
	playmusic MUSIC_ROCKET_ENCOUNTER
	turnobject TINTOWER6F_ROCKET, RIGHT
	opentext
	writetext ExecutiveM5BeforeText
	waitbutton
	closetext
	winlosstext ExecutiveM5BeatenText, 0
	setlasttalked TINTOWER6F_ROCKET
	loadtrainer EXECUTIVEM, EXECUTIVEM_5
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_ROCKET_EXECUTIVEM_5
	setevent EVENT_TIN_TOWER_ROCKET_POPULATION
	opentext
	writetext ExecutiveM5AfterText
	waitbutton
	closetext
	special FadeOutToBlack
	special ReloadSpritesNoPalettes
	disappear TINTOWER6F_ROCKET
	pause 15
	special FadeInFromBlack
	appear TINTOWER6F_SAGE
	moveobject TINTOWER6F_SAGE, 17, 1 
	applymovement TINTOWER6F_SAGE, SageMovement
	turnobject PLAYER, RIGHT
	opentext
	writetext Sage6FText
	waitbutton
	closetext
	special FadeOutToWhite
	special HealParty
	pause 15
	warp TIN_TOWER_1F, 10, 11
	end

SageMovement:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step_end

ExecutiveM5AfterText:
	text "The boss isn't going"
	line "to be happy to hear"
	cont "about this."

	text "I need to get out"
	line "of here ASAP." 
	end

Sage6FText:
	text "<PLAYER>, thank"
	line "you for stopping"
	cont "TEAM ROCKET."

	para "I believe that it"
	line "was their goal to"
	cont "seize control of"

	para "the legendary"
	line "#MON that is said"
	cont "to roost atop"
	
	para "this tower. If they"
	line "were to succeed, it"
	cont "mean disaster."

	para "The other sages and"
	line "I are tasked with"
	cont "guarding the upper"
	
	para "floors from entry"
	line "for this reason."
	
	para "They were just"
	line "too strong…"

	para "Anyway, let's get"
	line "you back downstairs."
	end

ExecutiveM5BeatenText:
	text "Damn it, you"
	line "beat me twice!"
	end

ExecutiveM5BeforeText:
	text "Hey! Aren't you"
	line "that kid from"
	cont "SLOWPOKE WELL?"

	para "You don't remember?"
	line "I got a promotion"
	cont "since we last met."

	para "I'm a full-fledged"
	line "junior executive"
	cont "at TEAM ROCKET!"

	para "Anyway, enough chit"
	line "chat. I won't let"
	cont "you beat me twice!"
	end

TinTower6FMaxPotion:
	itemball MAX_POTION

TinTower6F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  9, TIN_TOWER_7F, 1
	warp_event 11, 15, TIN_TOWER_5F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  6,  1, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 1, TrainerGruntM27, EVENT_TIN_TOWER_ROCKET_POPULATION
	object_event 19, 17, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, 0, EVENT_TIN_TOWER_ROCKET_POPULATION
	object_event  8,  8, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TinTower6FMaxPotion, EVENT_TIN_TOWER_6F_MAX_POTION
