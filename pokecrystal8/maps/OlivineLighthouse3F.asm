	object_const_def
	const OLIVINELIGHTHOUSE3F_YOUNGSTER
	const OLIVINELIGHTHOUSE3F_YOUNGSTER2
	const OLIVINELIGHTHOUSE3F_POKE_BALL

OlivineLighthouse3F_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerBirdKeeperTheo:
	trainer BIRD_KEEPER, THEO, EVENT_BEAT_BIRD_KEEPER_THEO, BirdKeeperTheoSeenText, BirdKeeperTheoBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BirdKeeperTheoAfterBattleText
	waitbutton
	closetext
	end

TrainerBirdKeeperDenis:
	trainer BIRD_KEEPER, DENIS, EVENT_BEAT_BIRD_KEEPER_DENIS, BirdKeeperDenisSeenText, BirdKeeperDenisBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BirdKeeperDenisAfterBattleText
	waitbutton
	closetext
	end

OlivineLighthouse3FEther:
	itemball ETHER

BirdKeeperTheoSeenText:
	text "Why are you here?"
	line "Are you just going"

	para "to gawk? I suggest"
	line "that you leave!"
	done

BirdKeeperTheoBeatenText:
	text "You really are"
	line "concerned…"
	done

BirdKeeperTheoAfterBattleText:
	text "How the heck do"
	line "you go up?"

	para "I want to visit"
	line "the sick #MON,"

	para "but I can't get up"
	line "there…"
	done

BirdKeeperDenisSeenText:
	text "We're pretty high"
	line "up here. My bird"

	para "#MON are in"
	line "prime form."
	done

BirdKeeperDenisBeatenText:
	text "Oops…They crashed…"
	done

BirdKeeperDenisAfterBattleText:
	text "My #MON learned"
	line "how to use FLY in"
	cont "CIANWOOD."

	para "Well, since I'm a"
	line "loser, I'll FLY"
	cont "across the sea…"
	done

OlivineLighthouse3F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 13,  3, OLIVINE_LIGHTHOUSE_4F, 1
	warp_event  5,  3, OLIVINE_LIGHTHOUSE_2F, 2
	warp_event  9,  5, OLIVINE_LIGHTHOUSE_4F, 4
	warp_event 16, 11, OLIVINE_LIGHTHOUSE_2F, 5
	warp_event 17, 11, OLIVINE_LIGHTHOUSE_2F, 6
	warp_event 16,  9, OLIVINE_LIGHTHOUSE_4F, 5
	warp_event 17,  9, OLIVINE_LIGHTHOUSE_4F, 6
	warp_event  8,  3, OLIVINE_LIGHTHOUSE_4F, 7
	warp_event  9,  3, OLIVINE_LIGHTHOUSE_4F, 8

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  5, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerBirdKeeperTheo, -1
	object_event  5,  2, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerBirdKeeperDenis, -1
	object_event  8,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, OlivineLighthouse3FEther, EVENT_OLIVINE_LIGHTHOUSE_3F_ETHER
