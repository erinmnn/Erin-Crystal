	object_const_def
	const TINTOWER6F_ROCKET
	const TINTOWER6F_SAGE
	const TINTOWER6F_POKE_BALL

TinTower6F_MapScripts:
	def_scene_scripts

	def_callbacks

Sage6FScript:
	opentext
	writetext Sage6FText1
	waitbutton
	closetext
	end

TinTowerExecutive:
	special FadeOutMusic
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
	moveobject TINTOWER6F_SAGE, 12, 1
	setevent EVENT_BEAT_ROCKET_EXECUTIVEM_5
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
	applymovement TINTOWER6F_SAGE, SageMovement
	turnobject PLAYER, RIGHT
	opentext
	writetext Sage6FText1
	waitbutton
	verbosegiveitem CLEAR_BELL
	writetext Sage6FText2
	closetext
	special FadeOutToWhite
	setevent EVENT_TIN_TOWER_ROCKET_POPULATION
	clearevent EVENT_TIN_TOWER_EMERGENCY
	special HealParty
	pause 15
	warp ECRUTEAK_CITY, 18, 12
	end

SageMovement:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step_end

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

	para "Anyway, enough" 
	line "chit chat."

	para "I won't let you"
	line "beat me twice." 
	cont "Let's go!"
	done

ExecutiveM5BeatenText:
	text "Damn it, you"
	line "beat me twice!"
	done

ExecutiveM5AfterText:
	text "The boss won't"
	line "be happy to hear"
	cont "about this."

	para "I need to get out"
	line "of here ASAP." 
	done

Sage6FText1:
	text "<PLAYER>, thank"
	line "you for stopping"
	cont "TEAM ROCKET."

	para "I believe that it"
	line "was their goal to"
	cont "seize control of"

	para "the legendary"
	line "#MON that is"
	cont "said to roost atop"
	
	para "this tower. If"
	line "they were to"
	
	para "succeed, it would"
	line "mean disaster."

	para "The sages and"
	line "I are tasked with"
	cont "guarding the tower"
	
	para "from entry"
	line "for this reason."
	
	para "They were just"
	line "too strong…"

	para "As a display of"
	line "gratitude, I'd"
	
	para "like to award you"
	line "this CLEAR BELL."
	done

Sage6FText2:
	text "It's said to bear"
	line "a spiritual con-"
	cont "nection to the"
	
	para "legendary"
	line "#MON SUICUNE."

	para "Hold onto it,"
	line "and when you're"
	cont "ready, the sages"

	para "will be happy to"
	line "evaluate your"
	cont "worthiness to"
	
	para "enter. For now"
	line "I must ask you"
	cont "to leave."

	para "Let's get you"
	line "down from here."
	done

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
	object_event  6,  1, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TinTowerExecutive, EVENT_TIN_TOWER_ROCKET_POPULATION
	object_event  2,  1, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Sage6FScript, EVENT_TIN_TOWER_ROCKET_POPULATION
	object_event  8,  8, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TinTower6FMaxPotion, EVENT_TIN_TOWER_6F_MAX_POTION
