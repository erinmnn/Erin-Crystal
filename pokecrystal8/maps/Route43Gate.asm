
	object_const_def
	const ROUTE43GATE_OFFICER

Route43Gate_MapScripts:
	def_scene_scripts

	def_callbacks

OfficerScript_GuardWithSludgeBomb:
	faceplayer
	opentext
	checkevent EVENT_GOT_TM36_SLUDGE_BOMB
	iftrue .GotSludgeBomb
	writetext OfficerText_FoundTM
	promptbutton
	verbosegiveitem TM_SLUDGE_BOMB
	iffalse .NoRoomForSludgeBomb
	setevent EVENT_GOT_TM36_SLUDGE_BOMB
	closetext
	end

.GotSludgeBomb:
	writetext OfficerText_AvoidGrass
	waitbutton
.NoRoomForSludgeBomb:
	closetext
	end

OfficerText_FoundTM:
	text "I got chased from"
	line "my post by these"
	cont "thugs in black."

	para "They left this"
	line "behind."

	para "It makes me uncom-"
	line "fortable. Could"
	cont "you take it away?"
	done

Text_ReceivedTM30: ; unreferenced
	text "<PLAYER> received"
	line "TM30."
	done

OfficerText_AvoidGrass:
	text "Use this gate to"
	line "avoid walking in"
	cont "the grass."
	done

Route43Gate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  0, ROUTE_43, 4
	warp_event  5,  0, ROUTE_43, 5
	warp_event  4,  7, ROUTE_43, 3
	warp_event  5,  7, ROUTE_43, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  4, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, OfficerScript_GuardWithSludgeBomb, -1
