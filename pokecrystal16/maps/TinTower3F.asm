	object_const_def
	const TINTOWER3F_ROCKET
	const TINTOWER3F_POKE_BALL

TinTower3F_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerGruntM30:
	trainer GRUNTM, GRUNTM_30, EVENT_BEAT_ROCKET_GRUNTM_30, GruntM30SeenText, GruntM30BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GruntM30AfterBattleText
	waitbutton
	closetext
	end

GruntM30SeenText:
	text "How did you"
	line "get up here?!"
	done

GruntM30BeatenText:
	text "Oh no…"
	done

GruntM30AfterBattleText:
	text "I can't tell you"
	line "anything about"
	cont "this operation."
	
	para "It's top secret!"
	done

TinTower3FFullHeal:
	itemball FULL_HEAL

TinTower3F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 10, 14, TIN_TOWER_2F, 1
	warp_event 16,  2, TIN_TOWER_4F, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  6, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerGruntM30, EVENT_TIN_TOWER_ROCKET_POPULATION
	object_event  3, 14, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TinTower3FFullHeal, EVENT_TIN_TOWER_3F_FULL_HEAL
