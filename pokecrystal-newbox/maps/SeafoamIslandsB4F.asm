	object_const_def
	const SEAFOAMISLANDSB4F_ARTICUNO
	const SEAFOAMISLANDSB4F_LORELEI

SeafoamIslandsB4F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, SeafoamIslandsArticunoCallback

SeafoamIslandsArticunoCallback:
	checkevent EVENT_BEAT_BLUE
	iffalse .NoAppear
	checkevent EVENT_SEAFOAM_ISLANDS_ARTICUNO
	iftrue .NoAppear
	readvar VAR_WEEKDAY
	ifequal MONDAY, .Appear
.NoAppear:
	disappear SEAFOAMISLANDSB4F_ARTICUNO
	endcallback

.Appear:
	appear SEAFOAMISLANDSB4F_ARTICUNO
	endcallback

SeafoamIslandsArticuno:
	faceplayer
	cry ARTICUNO
	loadwildmon ARTICUNO, 100
	startbattle
	disappear SEAFOAMISLANDSB4F_ARTICUNO
	setevent SEAFOAMISLANDSB4F_ARTICUNO
	reloadmapafterbattle
	end

SeafoamIslandsLorelei:
	faceplayer
	opentext
	checkevent EVENT_BEAT_LORELEI
	iftrue LoreleiAfterBattle
	writetext LoreleiBeforeText
	waitbutton
	closetext
	opentext
	writetext LoreleiBeforeText2
	closetext
	winlosstext LoreleiBeatenText, 0
	loadtrainer LORELEI, LORELEI1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_LORELEI
	opentext
	writetext LoreleiDefeatText
	waitbutton
	closetext
	playsound SFX_ESCAPE_ROPE
	applymovement SEAFOAMISLANDSB4F_LORELEI, LoreleiTeleport
	disappear SEAFOAMISLANDSB4F_LORELEI
	end

LoreleiAfterBattle:
	writetext LoreleiDefeatText
	waitbutton
	closetext
	end

LoreleiBeforeText:
	text "What are you doing"
	line "down here trainer?"

	para "This is where le-"
	line "gendary ARTICUNO"
	cont "roosts."
	done

LoreleiBeforeText2:
	text "The CHAMPION?"

	para "I used to serve on"
	line "the ELITE FOUR"
	cont "myself. I bet you"

	para "think you're"
	line "pretty strong."

	para "Well that may be,"
	line "but no one can"
	cont "best me comes to"

	para "battling! Your"
	line "#MON will be at"
	cont "my mercy when"

	para "they're frozen"
	line "solid!"

	para "Let's put your"
	line "skills to the"
	cont "test. Ready?"
	done

LoreleiBeatenText:
	text "You're better"
	line "than I thought!"
	done

LoreleiDefeatText:
	text "Looking for"
	line "BLAINE? I hope"
	cont "his hole of a gym"
	
	para "didn't cave in"
	line "again."

	para "…"

	para "I had better go"
	line "check on him."

	para "See you around,"
	line "CHAMP!"
	done

LoreleiTeleport:
	teleport_from
	step_end

SeafoamIslandsB4F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 25,  3, SEAFOAM_ISLANDS_B3F, 6 ;up ladder
	warp_event 11,  9, SEAFOAM_ISLANDS_B3F, 7 ;up ladder
	warp_event  3, 15, SEAFOAM_ISLANDS_B3F, 8 ;plop
	warp_event  8, 15, SEAFOAM_ISLANDS_B3F, 9 ;plop

	def_coord_events

	def_bg_events

	def_object_events
	object_event  22, 10, SPRITE_MOLTRES, SPRITEMOVEDATA_POKEMON, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SeafoamIslandsArticuno, EVENT_SEAFOAM_ISLANDS_ARTICUNO
	object_event  9, 14, SPRITE_TEACHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, SeafoamIslandsLorelei, EVENT_BEAT_LORELEI


