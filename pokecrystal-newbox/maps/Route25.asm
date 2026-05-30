	object_const_def
	const ROUTE25_MISTY
	const ROUTE25_COOLTRAINER_M1
	const ROUTE25_YOUNGSTER1
	const ROUTE25_LASS1
	const ROUTE25_YOUNGSTER2
	const ROUTE25_LASS2
	const ROUTE25_YOUNGSTER3
	const ROUTE25_LASS3
	const ROUTE25_SUPER_NERD
	const ROUTE25_COOLTRAINER_M2
	const ROUTE25_POKE_BALL

Route25_MapScripts:
	def_scene_scripts
	scene_script Route25Noop1Scene, SCENE_ROUTE25_NOOP
	scene_script Route25Noop2Scene, SCENE_ROUTE25_MISTYS_DATE

	def_callbacks

Route25Noop1Scene:
	end

Route25Noop2Scene:
	end

Route25MistyDate1Script:
	showemote EMOTE_HEART, ROUTE25_MISTY, 15
	pause 30
	showemote EMOTE_SHOCK, ROUTE25_COOLTRAINER_M1, 10
	turnobject ROUTE25_MISTY, DOWN
	applymovement ROUTE25_COOLTRAINER_M1, Route25MistysDateLeavesMovement1
	disappear ROUTE25_COOLTRAINER_M1
	pause 15
	playmusic MUSIC_BEAUTY_ENCOUNTER
	turnobject ROUTE25_MISTY, UP
	pause 10
	applymovement ROUTE25_MISTY, Route25MistyApproachesPlayerMovement1
	opentext
	writetext Route25MistyDateText
	waitbutton
	closetext
	turnobject PLAYER, DOWN
	applymovement ROUTE25_MISTY, Route25MistyLeavesPlayerMovement1
	turnobject PLAYER, LEFT
	applymovement ROUTE25_MISTY, Route25MistyLeavesMovement
	disappear ROUTE25_MISTY
	clearevent EVENT_TRAINERS_IN_CERULEAN_GYM
	setscene SCENE_ROUTE25_NOOP
	special RestartMapMusic
	end

Route25MistyDate2Script:
	showemote EMOTE_HEART, ROUTE25_MISTY, 15
	pause 30
	showemote EMOTE_SHOCK, ROUTE25_COOLTRAINER_M1, 10
	turnobject ROUTE25_MISTY, DOWN
	applymovement ROUTE25_COOLTRAINER_M1, Route25MistysDateLeavesMovement2
	disappear ROUTE25_COOLTRAINER_M1
	pause 15
	playmusic MUSIC_BEAUTY_ENCOUNTER
	turnobject ROUTE25_MISTY, UP
	pause 10
	applymovement ROUTE25_MISTY, Route25MistyApproachesPlayerMovement2
	opentext
	writetext Route25MistyDateText
	waitbutton
	closetext
	turnobject PLAYER, UP
	applymovement ROUTE25_MISTY, Route25MistyLeavesPlayerMovement2
	turnobject PLAYER, LEFT
	applymovement ROUTE25_MISTY, Route25MistyLeavesMovement
	disappear ROUTE25_MISTY
	clearevent EVENT_TRAINERS_IN_CERULEAN_GYM
	setscene SCENE_ROUTE25_NOOP
	special RestartMapMusic
	end

NuggetSix:
	checkevent EVENT_BEAT_LASS_SHANNON
	iftrue Done
;dudley
	playmusic MUSIC_YOUNGSTER_ENCOUNTER
	moveobject ROUTE25_YOUNGSTER1, 25, 8
	appear ROUTE25_YOUNGSTER1
	applymovement ROUTE25_YOUNGSTER1, TrainerApproachMovement
	scall TrainerSchoolboyDudley
	ifequal TRUE, Done
	applymovement ROUTE25_YOUNGSTER1, TrainerRetreatMovement
	disappear ROUTE25_YOUNGSTER1
;ellen
	playmusic MUSIC_LASS_ENCOUNTER
	moveobject ROUTE25_LASS1, 25, 8
	appear ROUTE25_LASS1
	applymovement ROUTE25_LASS1, TrainerApproachMovement
	scall TrainerLassEllen
	ifequal TRUE, Done
	applymovement ROUTE25_LASS1, TrainerRetreatMovement
	disappear ROUTE25_LASS1
;joe
	playmusic MUSIC_YOUNGSTER_ENCOUNTER
	moveobject ROUTE25_YOUNGSTER2, 25, 8
	appear ROUTE25_YOUNGSTER2
	applymovement ROUTE25_YOUNGSTER2, TrainerApproachMovement
	scall TrainerSchoolboyJoe
	ifequal TRUE, Done
	applymovement ROUTE25_YOUNGSTER2, TrainerRetreatMovement
	disappear ROUTE25_YOUNGSTER2
;laura
	playmusic MUSIC_LASS_ENCOUNTER
	moveobject ROUTE25_LASS2, 25, 8
	appear ROUTE25_LASS2
	applymovement ROUTE25_LASS2, TrainerApproachMovement
	scall TrainerLassLaura
	ifequal TRUE, Done
	applymovement ROUTE25_LASS2, TrainerRetreatMovement
	disappear ROUTE25_LASS2
;lloyd
	playmusic MUSIC_YOUNGSTER_ENCOUNTER
	moveobject ROUTE25_YOUNGSTER3, 25, 8
	appear ROUTE25_YOUNGSTER3
	applymovement ROUTE25_YOUNGSTER3, TrainerApproachMovement
	scall TrainerCamperLloyd
	ifequal TRUE, Done
	applymovement ROUTE25_YOUNGSTER3, TrainerRetreatMovement
	disappear ROUTE25_YOUNGSTER3
;shannon
	playmusic MUSIC_LASS_ENCOUNTER
	moveobject ROUTE25_LASS3, 25, 8
	appear ROUTE25_LASS3
	applymovement ROUTE25_LASS3, TrainerApproachMovement
	scall TrainerLassShannon
	ifequal TRUE, Done
	applymovement ROUTE25_LASS3, TrainerRetreatMovement
	setevent EVENT_BEAT_LASS_SHANNON
	disappear ROUTE25_LASS3
	end

Done:
	end

SchoolboyDudleyScript:
	opentext
	writetext SchoolboyDudleyAfterBattleText
	waitbutton
	closetext
	end

TrainerSchoolboyDudley:
	opentext
	writetext SchoolboyDudleySeenText
	waitbutton
	closetext
	winlosstext SchoolboyDudleyBeatenText, 0
	setlasttalked ROUTE25_YOUNGSTER1
	loadtrainer SCHOOLBOY, DUDLEY
	startbattle
	reloadmapafterbattle
	end

LassEllenScript:
	opentext
	writetext LassEllenAfterBattleText
	waitbutton
	closetext
	end

TrainerLassEllen:
	opentext
	writetext LassEllenSeenText
	waitbutton
	closetext
	winlosstext LassEllenBeatenText, 0
	setlasttalked ROUTE25_LASS1
	loadtrainer LASS, ELLEN
	startbattle
	reloadmapafterbattle
	end

SchoolboyJoeScript:
	opentext
	writetext SchoolboyJoeAfterBattleText
	waitbutton
	closetext
	end

TrainerSchoolboyJoe:
	opentext
	writetext SchoolboyJoeSeenText
	waitbutton
	closetext
	winlosstext SchoolboyJoeBeatenText, 0
	setlasttalked ROUTE25_YOUNGSTER2
	loadtrainer SCHOOLBOY, JOE
	startbattle
	reloadmapafterbattle
	end

LassLauraScript:
	opentext
	writetext LassLauraAfterBattleText
	waitbutton
	closetext
	end

TrainerLassLaura:
	opentext
	writetext LassLauraSeenText
	waitbutton
	closetext
	winlosstext LassLauraBeatenText, 0
	setlasttalked ROUTE25_LASS2
	loadtrainer LASS, LAURA
	startbattle
	reloadmapafterbattle
	end

CamperLloydScript:
	opentext
	writetext CamperLloydAfterBattleText
	waitbutton
	closetext
	end

TrainerCamperLloyd:
	opentext
	writetext CamperLloydSeenText
	waitbutton
	closetext
	winlosstext CamperLloydBeatenText, 0
	setlasttalked ROUTE25_YOUNGSTER3
	loadtrainer CAMPER, LLOYD
	startbattle
	reloadmapafterbattle
	end

LassShannonScript:
	opentext
	writetext LassShannonAfterBattleText
	waitbutton
	closetext
	end

TrainerLassShannon:
	opentext
	writetext LassShannonSeenText
	waitbutton
	closetext
	winlosstext LassShannonBeatenText, 0
	setlasttalked ROUTE25_LASS3
	loadtrainer LASS, SHANNON
	startbattle
	reloadmapafterbattle
	end

TrainerSupernerdPat:
	trainer SUPER_NERD, PAT, EVENT_BEAT_SUPER_NERD_PAT, SupernerdPatSeenText, SupernerdPatBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SupernerdPatAfterBattleText
	waitbutton
	closetext
	end

TrainerCooltrainermKevin:
	faceplayer
	opentext
	writetext CooltrainermKevinNuggetText
	promptbutton
	verbosegiveitem NUGGET
	iffalse .NoRoomForNugget
	setevent EVENT_CLEARED_NUGGET_BRIDGE
.NoRoomForNugget:
	closetext
	end

BillsHouseSign:
	jumptext BillsHouseSignText

Route25Protein:
	itemball PROTEIN

Route25HiddenPotion:
	hiddenitem POTION, EVENT_ROUTE_25_HIDDEN_POTION

Route25MistysDateLeavesMovement1:
	big_step DOWN
	step_end

Route25MistysDateLeavesMovement2:
	big_step DOWN
	big_step DOWN
	step_end

Route25MistyApproachesPlayerMovement1:
	step UP
	step UP
	step UP
	step LEFT
	step LEFT
	step LEFT
	step_end

Route25MistyApproachesPlayerMovement2:
	step UP
	step UP
	step LEFT
	step LEFT
	step LEFT
	step_end

Route25MistyLeavesPlayerMovement1:
	step DOWN
	step LEFT
	step_end

Route25MistyLeavesPlayerMovement2:
	step UP
	step LEFT
	step_end

Route25MistyLeavesMovement:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step_end

TrainerApproachMovement:
	big_step LEFT
	big_step LEFT
	big_step LEFT
	big_step LEFT
	step LEFT
	step_end

TrainerRetreatMovement:
	step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	step_end

Route25MistyDateText:
	text "MISTY: Aww! Why"
	line "did you have to"

	para "show up and bug us"
	line "now?"

	para "Do you know what"
	line "they call people"
	cont "like you?"

	para "Pests! You heard"
	line "me right, pest!"

	para "…"

	para "…Oh? Those BADGES"
	line "you have… Are they"
	cont "JOHTO GYM BADGES?"

	para "If you have eight,"
	line "you must be good."

	para "OK, then. Come to"
	line "CERULEAN GYM."

	para "I'll be happy to"
	line "take you on."

	para "I'm MISTY, the"
	line "GYM LEADER in"
	cont "CERULEAN."
	done

SchoolboyDudleySeenText:
	text "Beat the six of us"
	line "trainers to win a"
	cont "fabulous prize!"

	para "Think you've got"
	line "what it takes?"
	done

SchoolboyDudleyBeatenText:
	text "Whoo! Good stuff."
	done

SchoolboyDudleyAfterBattleText:
	text "I'm running a"
	line "hot operation."
	done

LassEllenSeenText:
	text "I'm second."
	line "Now it's serious!"
	done

LassEllenBeatenText:
	text "How could I lose?"
	done

LassEllenAfterBattleText:
	text "What's the deal"
	line "with airline food?"
	done

SchoolboyJoeSeenText:
	text "Here's No. 3!"
	line "I won't be easy."
	done

SchoolboyJoeBeatenText:
	text "Ow! Stomped flat!"
	done

SchoolboyJoeAfterBattleText:
	text "Israel has no"
	line "right to exist."
	done

LassLauraSeenText:
	text "I'm No. 4!"
	line "Getting tired?"
	done

LassLauraBeatenText:
	text "I lost too…"
	done

LassLauraAfterBattleText:
	text "I prefer Donald"
	line "Fagen's solo work."
	done

CamperLloydSeenText:
	text "OK! I'm No. 5."
	line "I'll stomp you!"
	done

CamperLloydBeatenText:
	text "Whoa! Too much."
	done

CamperLloydAfterBattleText:
	text "Who was really"
	line "behind 9/11?"
	done

LassShannonSeenText:
	text "I'm the last in"
	line "line, but I tell"
	cont "you, I'm tough!"
	done

LassShannonBeatenText:
	text "You're kidding."
	done

LassShannonAfterBattleText:
	text "I did my best."
	line "I have no regrets."
	done

SupernerdPatSeenText:
	text "Mufufufu…"

	para "I have nothing to"
	line "do with the six-"
	cont "pack trainers."

	para "I waited here to"
	line "beat you when you"

	para "were tired out by"
	line "all the battles."
	done

SupernerdPatBeatenText:
	text "Aren't you tired"
	line "at all?"
	done

SupernerdPatAfterBattleText:
	text "I'm sorry… I won't"
	line "cheat anymore…"
	done

CooltrainermKevinNuggetText:
	text "You took on one"
	line "more battle than"

	para "you expected, but"
	line "you won anyway."

	para "As promised, you"
	line "win a prize."
	done

CooltrainermKevinSeenText:
	text "But after seeing"
	line "how you battle, I"

	para "want to see how"
	line "I'll fare."

	para "How about it? Let"
	line "me take you on."
	done

CooltrainermKevinBeatenText:
	text "I've never had a"
	line "battle this good!"
	done

CooltrainermKevinAfterBattleText:
	text "That was a great"
	line "battle!"

	para "You and your #-"
	line "MON are truly out-"
	cont "standing!"
	done

BillsHouseSignText:
	text "SEA COTTAGE"
	line "BILL'S HOUSE"
	done

UnusedBillsHouseSignText: ; unreferenced
	text "BILL'S HOUSE"
	done

Route25_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 47,  5, BILLS_HOUSE, 1

	def_coord_events
	coord_event 42,  6, SCENE_ROUTE25_MISTYS_DATE, Route25MistyDate1Script
	coord_event 42,  7, SCENE_ROUTE25_MISTYS_DATE, Route25MistyDate2Script
	coord_event 19,  8, SCENE_ROUTE25_MISTYS_DATE, NuggetSix

	def_bg_events
	bg_event 45,  5, BGEVENT_READ, BillsHouseSign
	bg_event  4,  5, BGEVENT_ITEM, Route25HiddenPotion

	def_object_events
	object_event 46,  9, SPRITE_MISTY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_ROUTE_25_MISTY_BOYFRIEND
	object_event 46, 10, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_ROUTE_25_MISTY_BOYFRIEND
	object_event 26,  9, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SchoolboyDudleyScript, -1
	object_event 24, 11, SPRITE_LASS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, LassEllenScript, -1
	object_event 27,  4, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SchoolboyJoeScript, -1
	object_event 13,  4, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, LassLauraScript, -1
	object_event 25,  4, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CamperLloydScript, -1
	object_event 28, 11, SPRITE_LASS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, LassShannonScript, -1
	object_event 31,  7, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 5, TrainerSupernerdPat, -1
	object_event 37,  8, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, TrainerCooltrainermKevin, -1
	object_event 32,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route25Protein, EVENT_ROUTE_25_PROTEIN
