	object_const_def
	const TINTOWER4F_ROCKET1
	const TINTOWER4F_ROCKET2
	const TINTOWER4F_POKE_BALL1
	const TINTOWER4F_POKE_BALL2
	const TINTOWER4F_POKE_BALL3

TinTower4F_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerGruntF6:
	trainer GRUNTF, GRUNTF_6, EVENT_BEAT_ROCKET_GRUNTF_6, GruntF6SeenText, GruntF6BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GruntF6AfterBattleText
	waitbutton
	closetext
	end

GruntF6SeenText:
	text "Stop right there"
	line "kid!"
	done

GruntF6BeatenText:
	text "I'm sweating…"
	done

GruntF6AfterBattleText:
	text "I didn't think"
	line "it would be so"
	cont "hot up here."
	done

TrainerGruntF7:
	trainer GRUNTF, GRUNTF_7, EVENT_BEAT_ROCKET_GRUNTF_7, GruntF7SeenText, GruntF7BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GruntF7AfterBattleText
	waitbutton
	closetext
	end

GruntF7SeenText:
	text "You'll never stop"
	line "TEAM ROCKET…"
	cont "or something…"
	done

GruntF7BeatenText:
	text "I'm kinda over it."
	done

GruntF7AfterBattleText:
	text "Can I be totally"
	line "honest with you"
	cont "for a moment?"

	para "I joined for the"
	line "sign on bonus."

	para "My heart really"
	line "isn't in it,"
	cont "not anymore."
	done

TinTower4FUltraBall:
	itemball ULTRA_BALL

TinTower4FPPUp:
	itemball PP_UP

TinTower4FEscapeRope:
	itemball ESCAPE_ROPE

TinTower4FHiddenMaxPotion:
	hiddenitem MAX_POTION, EVENT_TIN_TOWER_4F_HIDDEN_MAX_POTION

TinTower4F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  4, TIN_TOWER_5F, 2
	warp_event 16,  2, TIN_TOWER_3F, 2
	warp_event  2, 12, TIN_TOWER_5F, 3
	warp_event 17, 15, TIN_TOWER_5F, 4

	def_coord_events

	def_bg_events
	bg_event 10,  9, BGEVENT_ITEM, TinTower4FHiddenMaxPotion

	def_object_events
	object_event  2, 14, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 1, TrainerGruntF6, EVENT_TIN_TOWER_ROCKET_POPULATION
	object_event  9, 10, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 1, TrainerGruntF7, EVENT_TIN_TOWER_ROCKET_POPULATION
	object_event 14, 10, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TinTower4FUltraBall, EVENT_TIN_TOWER_4F_ULTRA_BALL
	object_event 17, 14, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TinTower4FPPUp, EVENT_TIN_TOWER_4F_PP_UP
	object_event  2, 15, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TinTower4FEscapeRope, EVENT_TIN_TOWER_4F_ESCAPE_ROPE
