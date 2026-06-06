	const ROUTE23_COOLTRAINER_M
	const ROUTE23_BIKER

Route23_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, Route23FlypointCallback

Route23FlypointCallback:
	setflag ENGINE_FLYPOINT_INDIGO_PLATEAU
	endcallback

IndigoPlateauSign:
	jumptext IndigoPlateauSignText

IndigoPlateauSignText:
	text "INDIGO PLATEAU"

	para "The Ultimate Goal"
	line "for Trainers!"

	para "#MON LEAGUE HQ"
	done

TrainerCooltrainermRuben:
	trainer COOLTRAINERM, RUBEN2, EVENT_BEAT_COOLTRAINERM_RUBEN2, CooltrainermRubenSeenText, CooltrainermRubenBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainermRubenAfterBattleText
	waitbutton
	closetext
	end

TrainerBikerNick2:
	trainer BIKER, NICK2, EVENT_BEAT_BIKER_NICK2, BikerNickSeenText2, BikerNickBeatenText2, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BikerNickAfterBattleText2
	waitbutton
	closetext
	end


CooltrainermRubenSeenText:
	text "Remember me?"
	
	para "You won my respect"
	line "on ROUTE 45."

	para "Good luck against"
	line "the ELITE FOUR."
	cont "But first…"

	para "Let's battle!"
	done

CooltrainermRubenBeatenText:
	text "Oh, I lost that!"
	done

CooltrainermRubenAfterBattleText:
	text "It's all you, boo."

	para "Make me proud!"
	done

BikerNickSeenText2:
	text "Hey, friendo."
	
	para "You made an ass"
	line "of me back on"
	cont "ROUTE 17."

	para "You're going to"
	line "regret that, bud!"
	done

BikerNickBeatenText2:
	text "Well, damn!"
	done

BikerNickAfterBattleText2:
	text "At this point I"
	line "just gotta shake"
	cont "your hand."
	done

Route23_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9,  5, INDIGO_PLATEAU_POKECENTER_1F, 1
	warp_event 10,  5, INDIGO_PLATEAU_POKECENTER_1F, 2
	warp_event  9, 13, VICTORY_ROAD, 10
	warp_event 10, 13, VICTORY_ROAD, 10

	def_coord_events

	def_bg_events
	bg_event 11,  7, BGEVENT_READ, IndigoPlateauSign

	def_object_events
	object_event 12,  9, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 6, TrainerCooltrainermRuben, EVENT_NICK_AND_RUBEN
	object_event  7,  8, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 6, TrainerBikerNick2, EVENT_NICK_AND_RUBEN
