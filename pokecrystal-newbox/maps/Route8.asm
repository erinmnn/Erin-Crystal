	object_const_def
	const ROUTE8_BIKER1
	const ROUTE8_BIKER2
	const ROUTE8_BIKER3
	const ROUTE8_SUPER_NERD1
	const ROUTE8_SUPER_NERD2
	const ROUTE8_FRUIT_TREE

Route8_MapScripts:
	def_scene_scripts
	scene_script Route8BikerScene, SCENE_ROUTE8_BIKER

	def_callbacks

Route8BikerScene:
	end

BikerTriple:
	checkevent EVENT_BEAT_BIKER_ZEKE
	iftrue BikersDone
;dwayne
	playmusic MUSIC_HIKER_ENCOUNTER
	applymovement ROUTE8_BIKER1, DwayneApproachMovement
	scall TrainerBikerDwayne
	ifequal TRUE, BikersDone
	applymovement ROUTE8_BIKER1, RetreatMovement
	disappear ROUTE8_BIKER1
;harris
	playmusic MUSIC_HIKER_ENCOUNTER
	applymovement ROUTE8_BIKER2, HarrisApproachMovement
	scall TrainerBikerHarris
	ifequal TRUE, BikersDone
	applymovement ROUTE8_BIKER2, RetreatMovement
	disappear ROUTE8_BIKER2
;zeke
	playmusic MUSIC_HIKER_ENCOUNTER
	applymovement ROUTE8_BIKER3, ZekeApproachMovement
	scall TrainerBikerZeke
	ifequal TRUE, BikersDone
	applymovement ROUTE8_BIKER1, RetreatMovement
	setevent EVENT_BEAT_BIKER_ZEKE
	disappear ROUTE8_BIKER1
	end

BikersDone:
	end

BikerDwayneScript:
	opentext
	writetext BikerDwayneAfterBattleText
	waitbutton
	closetext
	end

TrainerBikerDwayne:
	opentext
	writetext BikerDwayneSeenText
	waitbutton
	closetext
	winlosstext BikerDwayneBeatenText, 0
	setlasttalked ROUTE8_BIKER1
	loadtrainer BIKER, DWAYNE
	startbattle
	reloadmapafterbattle
	end

BikerHarrisScript:
	opentext
	writetext BikerHarrisAfterBattleText
	waitbutton
	closetext
	end

TrainerBikerHarris:
	opentext
	writetext BikerHarrisSeenText
	waitbutton
	closetext
	winlosstext BikerHarrisBeatenText, 0
	setlasttalked ROUTE8_BIKER2
	loadtrainer BIKER, HARRIS
	startbattle
	reloadmapafterbattle
	end

BikerZekeScript:
	opentext
	writetext BikerZekeAfterBattleText
	waitbutton
	closetext
	end

TrainerBikerZeke:
	opentext
	writetext BikerZekeSeenText
	waitbutton
	closetext
	winlosstext BikerZekeBeatenText, 0
	setlasttalked ROUTE8_BIKER3
	loadtrainer BIKER, ZEKE
	startbattle
	reloadmapafterbattle
	end

DwayneApproachMovement:
	step LEFT
	step LEFT
	step_end

HarrisApproachMovement:
	step UP
	step LEFT
	step LEFT
	step_end

ZekeApproachMovement:
	big_step UP
	big_step UP
	big_step LEFT
	big_step LEFT
	step_end

RetreatMovement:
	big_step DOWN
	big_step DOWN
	big_step DOWN
	big_step DOWN
	big_step DOWN
	big_step DOWN
	big_step DOWN
	big_step DOWN
	step_end

TrainerSupernerdSam:
	trainer SUPER_NERD, SAM, EVENT_BEAT_SUPER_NERD_SAM, SupernerdSamSeenText, SupernerdSamBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SupernerdSamAfterBattleText
	waitbutton
	closetext
	end

TrainerSupernerdTom:
	trainer SUPER_NERD, TOM, EVENT_BEAT_SUPER_NERD_TOM, SupernerdTomSeenText, SupernerdTomBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SupernerdTomAfterBattleText
	waitbutton
	closetext
	end

Route8LockedDoor:
	jumptext Route8LockedDoorText

Route8UndergroundPathSign:
	jumptext Route8UndergroundPathSignText

Route8FruitTree:
	fruittree FRUITTREE_ROUTE_8

BikerDwayneSeenText:
	text "We're the KANTO"
	line "#MON FEDERATION"
	cont "trainer group."

	para "We'll drive you"
	line "under our wheels!"
	done

BikerDwayneBeatenText:
	text "S-sorry!"
	done

BikerDwayneAfterBattleText:
	text "The KANTO #MON"
	line "FEDERATION will"
	cont "never fall!"
	done

BikerHarrisSeenText:
	text "The cops shut down"
	line "our UNDERGROUND"

	para "PATH! That really"
	line "fries me!"
	done

BikerHarrisBeatenText:
	text "F-forgive me!"
	done

BikerHarrisAfterBattleText:
	text "Wiped out by some"
	line "punk from JOHTO…"
	done

BikerZekeSeenText:
	text "We're the KANTO"
	line "#MON FEDERA-"
	cont "TION!"
	cont "Right on!"
	done

BikerZekeBeatenText:
	text "Yikes! Sorry!"
	done

BikerZekeAfterBattleText:
	text "We'll try not to"
	line "disturb anyone"
	cont "from now on…"
	done

SupernerdSamSeenText:
	text "How does the MAG-"
	line "NET TRAIN work?"
	done

SupernerdSamBeatenText:
	text "I just want to see"
	line "the MAGNET TRAIN…"
	done

SupernerdSamAfterBattleText:
	text "The power of mag-"
	line "nets is awesome!"
	done

SupernerdTomSeenText:
	text "Hm… You've got"
	line "many GYM BADGES."
	done

SupernerdTomBeatenText:
	text "Just as I thought…"
	line "You're tough!"
	done

SupernerdTomAfterBattleText:
	text "GYM BADGES give"
	line "you advantages in"
	cont "battles."
	done

Route8LockedDoorText:
	text "It's locked…"
	done

Route8UndergroundPathSignText:
	text "The flyer's torn."

	para "It's impossible to"
	line "read…"
	done

Route8_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  4, ROUTE_8_SAFFRON_GATE, 3
	warp_event  4,  5, ROUTE_8_SAFFRON_GATE, 4

	def_coord_events
	coord_event  7,  8, -1, BikerTriple
	coord_event  6,  8, -1, BikerTriple

	def_bg_events
	bg_event 11,  7, BGEVENT_READ, Route8UndergroundPathSign
	bg_event 10,  5, BGEVENT_READ, Route8LockedDoor

	def_object_events
	object_event 10,  8, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 5, BikerDwayneScript, -1
	object_event 10,  9, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 5, BikerHarrisScript, -1
	object_event 10, 10, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 5, BikerZekeScript, -1
	object_event 35,  7, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerSupernerdSam, -1
	object_event 35, 10, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerSupernerdTom, -1
	object_event 33,  5, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route8FruitTree, -1
