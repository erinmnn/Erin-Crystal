	object_const_def
	const VERMILIONMAGNETTRAINSPEECHHOUSE_POKEFAN_F
	const VERMILIONMAGNETTRAINSPEECHHOUSE_YOUNGSTER

VermilionMagnetTrainSpeechHouse_MapScripts:
	def_scene_scripts

	def_callbacks

VermilionMagnetTrainSpeechHousePokefanFScript:
	faceplayer
	opentext
	checkevent EVENT_TRAIN_ENTHUSIAST
	iftrue .AlreadyTalked
	writetext VermilionMagnetTrainSpeechHousePokefanFText
	promptbutton
.AlreadyTalked:
	writetext VermilionMagnetTrainSpeechHousePokefanFTMText
	verbosegiveitem TM_ICE_BEAM
	waitbutton
	closetext
	end

VermilionMagnetTrainSpeechHouseYoungsterScript:
	jumptextfaceplayer VermilionMagnetTrainSpeechHouseYoungsterText

VermilionMagnetTrainSpeechHouseBookshelf:
	jumpstd PictureBookshelfScript

VermilionMagnetTrainSpeechHousePokefanFText:
	text "Do you know about"
	line "the MAGNET TRAIN?"

	para "It's a railway"
	line "that goes to GOL-"
	cont "DENROD in JOHTO."

	para "You've been there?"

	para "You're from NEW"
	line "BARK TOWN? Well"
	cont "then, let me"

	para "give you a tip"
	line "for making it"
	cont "here in KANTO."

	para "THUNDERBOLT plus"
	line "ICE BEAM."

	para "Best synergy you"
	line "can ask for."

VermilionMagnetTrainSpeechHousePokefanFTMText:
	para "Here, take a TM."
	line "Seriously, I have"
	cont "dozens of them."
	done

VermilionMagnetTrainSpeechHouseYoungsterText:
	text "I want to go to"
	line "SAFFRON to see"
	cont "the MAGNET TRAIN."
	done

VermilionMagnetTrainSpeechHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, VERMILION_CITY, 4
	warp_event  3,  7, VERMILION_CITY, 4

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, VermilionMagnetTrainSpeechHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, VermilionMagnetTrainSpeechHouseBookshelf

	def_object_events
	object_event  2,  3, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VermilionMagnetTrainSpeechHousePokefanFScript, -1
	object_event  0,  3, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, VermilionMagnetTrainSpeechHouseYoungsterScript, -1
