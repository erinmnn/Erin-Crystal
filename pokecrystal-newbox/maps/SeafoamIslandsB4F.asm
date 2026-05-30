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
	winlosstext LoreleiBeatenText, 0
	loadtrainer LORELEI, LORELEI1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_LORELEI
	opentext
	writetext LoreleiDefeatText
	waitbutton
	closetext
	end

LoreleiAfterBattle:
	writetext LoreleiDefeatText
	waitbutton
	closetext
	end

LoreleiBeforeText:
	text "text"
	done

LoreleiBeatenText:
	text "text"
	done

LoreleiDefeatText:
	text "text"
	done

SeafoamIslandsB4F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 25,  3, SEAFOAM_ISLANDS_B4F, 6 ;up ladder
	warp_event 11,  9, SEAFOAM_ISLANDS_B4F, 7 ;up ladder
	warp_event  3, 15, SEAFOAM_ISLANDS_B4F, 8 ;plop
	warp_event  8, 15, SEAFOAM_ISLANDS_B4F, 9 ;plop

	def_coord_events

	def_bg_events

	def_object_events
	object_event  22, 10, SPRITE_MOLTRES, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SeafoamIslandsArticuno, EVENT_SEAFOAM_ISLANDS_ARTICUNO
	object_event  9, 14, SPRITE_TEACHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, SeafoamIslandsLorelei, EVENT_BEAT_LORELEI


