	object_const_def
	const OLIVINELIGHTHOUSE2F_GENTLEMAN
	const OLIVINELIGHTHOUSE2F_GENTLEMAN2

OlivineLighthouse2F_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerGentlemanPreston:
	trainer GENTLEMAN, PRESTON, EVENT_BEAT_GENTLEMAN_PRESTON, GentlemanPrestonSeenText, GentlemanPrestonBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GentlemanPrestonAfterBattleText
	waitbutton
	closetext
	end

TrainerGentlemanAlfred:
	trainer GENTLEMAN, ALFRED, EVENT_BEAT_GENTLEMAN_ALFRED, GentlemanAlfredSeenText, GentlemanAlfredBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GentlemanAlfredAfterBattleText
	waitbutton
	closetext
	end

GentlemanAlfredSeenText:
	text "Hm? This is no"
	line "place for playing."
	done

GentlemanAlfredBeatenText:
	text "Ah! I can see that"
	line "you're serious."
	done

GentlemanAlfredAfterBattleText:
	text "Up top is a #-"
	line "MON that keeps the"
	cont "LIGHTHOUSE lit."

	para "But I hear that"
	line "it's sick now and"

	para "can't be cured by"
	line "ordinary medicine."
	done

GentlemanPrestonSeenText:
	text "I travel the world"
	line "to train my #-"
	cont "MON. I wish to"
	cont "battle with you."
	done

GentlemanPrestonBeatenText:
	text "…sigh… I must"
	line "train some more…"
	done

GentlemanPrestonAfterBattleText:
	text "JASMINE used to"
	line "use rock #MON"
	cont "like ONIX."
	done

OlivineLighthouse2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3, 11, OLIVINE_LIGHTHOUSE_1F, 3
	warp_event  5,  3, OLIVINE_LIGHTHOUSE_3F, 2
	warp_event 16, 13, OLIVINE_LIGHTHOUSE_1F, 4
	warp_event 17, 13, OLIVINE_LIGHTHOUSE_1F, 5
	warp_event 16, 11, OLIVINE_LIGHTHOUSE_3F, 4
	warp_event 17, 11, OLIVINE_LIGHTHOUSE_3F, 5

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3, 10, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerGentlemanAlfred, -1
	object_event  2, 11, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerGentlemanPreston, -1
