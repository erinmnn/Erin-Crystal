	object_const_def
	const BATTLETOWERELEVATOR_RECEPTIONIST

BattleTowerElevator_MapScripts:
	def_scene_scripts

	def_callbacks

ValidatorScript:
	checkevent EVENT_VALIDATION
	iftrue .AlreadyValidated
	opentext
	writetext ValidatorText
	closetext
	checkevent EVENT_GOT_TM24_DRAGONBREATH
	iffalse .SevenBadges
	pause 30
	opentext
	writetext JustKidding
	writetext AllSet
	waitsfx
	writetext PlayerValidatedText
	playsound SFX_FANFARE
	waitsfx
	closetext
	setevent EVENT_VALIDATION
	done

.AlreadyValidated:
	opentext
	writetext AllSet
	closetext
	done

.SevenBadges:
	end

ValidatorText:
	text "What can I do for"
	line "you today?"

	para "Badge validation?"

	para "Sure, I can get"
	line "that started for"
	cont "you right now."

	para "Let me just take"
	line "a look at your"
	cont "badge case."
	
	para "And I'll also"
	line "need your trainer"
	cont "I.D. card."

	para "Great, I'll go"
	line "ahead and put it"
	cont "in the system."

	para "And there you go!"
	
	para "You should be all"
	line "set in 5-8 busi-"
	cont "ness days."
	done

JustKidding:
	text "Just kidding."
	done

AllSet:
	text "You're all set."
	line "Safe travels!"
	done

PlayerValidatedText:
	text "<PLAYER> got"
	line "validated!"
	done

RawrScript:
	cry RHYDON
	end

BattleTowerElevator_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7,  5, ROUTE_46, 4
	warp_event  7,  4, ROUTE_46, 5

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  4, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ValidatorScript, -1
	object_event  5,  1, SPRITE_MONSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RawrScript, -1
