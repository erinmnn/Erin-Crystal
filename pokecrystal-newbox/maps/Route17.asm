	object_const_def
	const ROUTE17_BIKER1
	const ROUTE17_BIKER2
	const ROUTE17_BIKER3
	const ROUTE17_BIKER4

Route17_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, Route17AlwaysOnBikeCallback

Route17AlwaysOnBikeCallback:
	setflag ENGINE_ALWAYS_ON_BIKE
	setflag ENGINE_DOWNHILL
	endcallback

TrainerBikerNick:
	trainer BIKER, NICK, EVENT_BEAT_BIKER_JOEL, BikerNickSeenText, BikerNickBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BikerNickAfterBattleText
	waitbutton
	closetext
	end

TrainerBikerRiley:
	trainer BIKER, RILEY, EVENT_BEAT_BIKER_RILEY, BikerRileySeenText, BikerRileyBeatenText, 0, .Script

.Script:
	opentext
	writetext BikerRileyAfterBattleText
	waitbutton
	closetext
	applymovement ROUTE17_BIKER1, BikerMovement
	disappear ROUTE17_BIKER1
	applymovement PLAYER, PlayerMovement
	end

TrainerBikerGlenn:
	trainer BIKER, GLENN, EVENT_BEAT_BIKER_GLENN, BikerGlennSeenText, BikerGlennBeatenText, 0, .Script

.Script:
	opentext
	writetext BikerGlennAfterBattleText
	waitbutton
	closetext
	applymovement ROUTE17_BIKER2, BikerMovement
	disappear ROUTE17_BIKER2
	applymovement PLAYER, PlayerMovement
	end

TrainerBikerCharles:
	trainer BIKER, CHARLES, EVENT_BEAT_BIKER_CHARLES, BikerCharlesSeenText, BikerCharlesBeatenText, 0, .Script

.Script:
	opentext
	writetext BikerCharlesAfterBattleText
	waitbutton
	closetext
	applymovement ROUTE17_BIKER3, BikerMovement
	disappear ROUTE17_BIKER3
	applymovement PLAYER, PlayerMovement
	end

Route17HiddenMaxEther:
	hiddenitem MAX_ETHER, EVENT_ROUTE_17_HIDDEN_MAX_ETHER

Route17HiddenMaxElixer:
	hiddenitem MAX_ELIXER, EVENT_ROUTE_17_HIDDEN_MAX_ELIXER

BikerRileySeenText:
	text "Hey, you! You're"
	line "from JOHTO, huh?"
	done

BikerRileyBeatenText:
	text "Whoa, you kick!"
	done

BikerRileyAfterBattleText:
	text "Don't get cocky,"
	line "you JOHTO punk!"
	done

BikerGlennSeenText:
	text "Wow. That's a cool"
	line "BICYCLE!"
	done

BikerGlennBeatenText:
	text "But you don't just"
	line "look cool…"
	done

BikerGlennAfterBattleText:
	text "I look cool, but"
	line "I'm weak, so I'm"
	cont "not really cool."

	para "I have to train"
	line "harder…"
	done

BikerCharlesSeenText:
	text "Hey! Want to have"
	line "a speed battle?"
	done

BikerCharlesBeatenText:
	text "Yikes! You've got"
	line "awesome torque!"
	done

BikerCharlesAfterBattleText:
	text "Hands-free riding"
	line "is considered cool"
	cont "on CYCLING ROAD."
	done

BikerNickSeenText:
	text "We're fearless"
	line "highway stars!"
	done

BikerNickBeatenText:
	text "Arrrgh! Crash and"
	line "burn!"
	done

BikerNickAfterBattleText:
	text "Reckless driving"
	line "causes accidents!"
	cont "Take it easy!"
	done

BikerMovement:
	step LEFT
	big_step DOWN
	big_step DOWN
	big_step DOWN
	big_step DOWN
	step_end

PlayerMovement:
	step DOWN
	step_end

Route17_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 17, 82, ROUTE_17_ROUTE_18_GATE, 1
	warp_event 17, 83, ROUTE_17_ROUTE_18_GATE, 2

	def_coord_events

	def_bg_events
	bg_event  9, 54, BGEVENT_ITEM, Route17HiddenMaxEther
	bg_event  8, 77, BGEVENT_ITEM, Route17HiddenMaxElixer

	def_object_events
	object_event  7, 66, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerBikerRiley, -1
	object_event  7, 67, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerBikerGlenn, -1
	object_event  7, 68, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerBikerCharles, -1
	object_event  7, 69, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerBikerNick, -1
