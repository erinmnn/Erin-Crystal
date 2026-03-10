	object_const_def
	const TINTOWER5F_ROCKET
	const TINTOWER5F_POKE_BALL

TinTower5F_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerGruntM27:
	trainer GRUNTM, GRUNTM_7, EVENT_BEAT_ROCKET_GRUNTM_27, GruntM27SeenText, GruntM27BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GruntM27AfterBattleText
	waitbutton
	closetext
	end

GruntM27SeenText:
	text "You stupid"
	line "little fuck."
	done

GruntM27BeatenText:
	text "Grrrr."
	done

GruntM27AfterBattleText:
	text "Get lost."
	line "You're too late."
	done

TinTower5FRareCandy:
	itemball RARE_CANDY

TinTower5FHiddenFullRestore:
	hiddenitem FULL_RESTORE, EVENT_TIN_TOWER_5F_HIDDEN_FULL_RESTORE

TinTower5FHiddenCarbos:
	hiddenitem CARBOS, EVENT_TIN_TOWER_5F_HIDDEN_CARBOS

TinTower5F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 11, 15, TIN_TOWER_6F, 2
	warp_event  2,  4, TIN_TOWER_4F, 1
	warp_event  2, 14, TIN_TOWER_4F, 3
	warp_event 17, 15, TIN_TOWER_4F, 4

	def_coord_events

	def_bg_events
	bg_event 16, 14, BGEVENT_ITEM, TinTower5FHiddenFullRestore
	bg_event  3, 15, BGEVENT_ITEM, TinTower5FHiddenCarbos

	def_object_events
	object_event 17,  0, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 1, TrainerGruntM27, EVENT_TIN_TOWER_ROCKET_POPULATION
	object_event  9,  9, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TinTower5FRareCandy, EVENT_TIN_TOWER_5F_RARE_CANDY
