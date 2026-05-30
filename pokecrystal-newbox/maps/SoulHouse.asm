	object_const_def
	const SOULHOUSE_MRFUJI
	const SOULHOUSE_TEACHER
	const SOULHOUSE_LASS
	const SOULHOUSE_GRANNY
	const SOULHOUSE_AGATHA

SoulHouse_MapScripts:
	def_scene_scripts

	def_callbacks

MrFuji:
	jumptextfaceplayer MrFujiText

SoulHouseTeacherScript:
	jumptextfaceplayer SoulHouseTeacherText

SoulHouseLassScript:
	jumptextfaceplayer SoulHouseLassText

SoulHouseGrannyScript:
	jumptextfaceplayer SoulHouseGrannyText

SoulHouseAgathaScript:
	faceplayer
	setevent EVENT_FOUND_MACHINE_PART_IN_CERULEAN_GYM
	opentext
	checkevent EVENT_BEAT_AGATHA
	iftrue AgathaAfterBattle
	writetext AgathaBeforeText
	waitbutton
	closetext
	winlosstext AgathaBeatenText, 0
	loadtrainer AGATHA, AGATHA1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_AGATHA
	opentext
	writetext AgathaDefeatText
	waitbutton
	closetext
	end

AgathaAfterBattle:
	writetext AgathaDefeatText
	waitbutton
	closetext
	end

AgathaBeforeText:
	text "Gone…"

	para "Hello child."

	para "#MON are for"
	line "fighting."
	
	para "You think you"
	line "can fight?"

	para "You will perish."
	done

AgathaBeatenText:
	text "You're something"
	line "different, child."
	done

AgathaDefeatText:
	text "I've nothing else"
	line "to say. Run along"
	cont "now, child."
	done

MrFujiText:
	text "MR.FUJI: Welcome."

	para "Hmm… You appear to"
	line "be raising your"

	para "#MON in a kind"
	line "and loving manner."

	para "#MON lovers"
	line "come here to pay"

	para "their respects to"
	line "departed #MON."

	para "Please offer con-"
	line "dolences for the"

	para "souls of the de-"
	line "parted #MON."

	para "I'm sure that will"
	line "make them happy."
	done

SoulHouseTeacherText:
	text "There are other"
	line "graves of #MON"
	cont "here, I think."

	para "There are many"
	line "chambers that only"
	cont "MR.FUJI may enter."
	done

SoulHouseLassText:
	text "I came with my mom"
	line "to visit #MON"
	cont "graves…"
	done

SoulHouseGrannyText:
	text "The #MON that"
	line "lived with me…"

	para "I loved them like"
	line "my grandchildren…"
	done

SoulHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  7, LAVENDER_TOWN, 6
	warp_event  5,  7, LAVENDER_TOWN, 6

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  1, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MrFuji, -1
	object_event  7,  3, SPRITE_TEACHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SoulHouseTeacherScript, -1
	object_event  2,  5, SPRITE_LASS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SoulHouseLassScript, -1
	object_event  1,  3, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SoulHouseGrannyScript, -1
	object_event  5,  1, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SoulHouseAgathaScript, -1
