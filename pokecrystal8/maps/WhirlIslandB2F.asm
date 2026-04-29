	object_const_def
	const WHIRLISLANDB2F_ROCKET_GIRL
	const WHIRLISLANDB2F_POKE_BALL1
	const WHIRLISLANDB2F_POKE_BALL2
	const WHIRLISLANDB2F_POKE_BALL3

WhirlIslandB2F_MapScripts:
	def_scene_scripts
	scene_script WhirlIslandB2FNoop3Scene,      SCENE_WHIRLISLANDB2F_NOOP
	def_callbacks

WhirlIslandB2FNoop3Scene:
	end

ArianaLugiaCave:
	special FadeOutMusic
	showemote EMOTE_SHOCK, WHIRLISLANDB2F_ROCKET_GIRL, 15
	faceplayer
	playmusic MUSIC_ROCKET_ENCOUNTER
	opentext
	writetext ArianaLugiaText
	waitbutton
	closetext
	winlosstext ArianaWinText, 0
	setlasttalked WHIRLISLANDB2F_ROCKET_GIRL
	loadtrainer EXECUTIVEF, EXECUTIVEF_2
	startbattle
	setevent EVENT_TEAM_ROCKET_BASE_B2F_EXECUTIVE
	setevent EVENT_TEAM_ROCKET_BASE_B2F_GRUNT_WITH_EXECUTIVE
	setevent EVENT_TEAM_ROCKET_BASE_B2F_DRAGONITE
	setevent EVENT_TEAM_ROCKET_BASE_B2F_LANCE
	reloadmapafterbattle
	setevent EVENT_BEAT_ROCKET_EXECUTIVEF_2
	opentext
	writetext ArianaRetreatText
	waitbutton
	closetext
	special FadeOutToBlack
	special ReloadSpritesNoPalettes
	disappear WHIRLISLANDB2F_ROCKET_GIRL
	pause 15
	special FadeInFromBlack
	setmapscene TEAM_ROCKET_BASE_B2F, SCENE_TEAMROCKETBASEB2F_AFTER_BATTLE
	clearevent EVENT_TEAM_ROCKET_BASE_B2F_LANCE
	clearevent EVENT_ARIANA_FLED
	special RestartMapMusic
	end

WhirlIslandB2FFullRestore:
	itemball FULL_RESTORE

WhirlIslandB2FMaxRevive:
	itemball MAX_REVIVE

WhirlIslandB2FMaxElixer:
	itemball MAX_ELIXER

ArianaCaveMovement:
	step RIGHT
	step RIGHT
	step_end

ArianaLugiaText:
	text "Don't you know"
	line "when to quit?!"

	para "Don't make me"
	line "teach you a"
	cont "lesson!"
	done

ArianaWinText:
	text "Tch, you really"
	line "are strong."

	para "It's too bad."

	para "If you were to"
	line "join TEAM ROCKET,"

	para "you could become"
	line "an EXECUTIVE."
	done

ArianaRetreatText:
	text "…This hideout is"
	line "done for…"

	para "But that's fine."
	line "The broadcast ex-"
	cont "periment was a"
	cont "total success."

	para "LUGIA is safe for"
	line "now... But"

	para "we have much big-"
	line "ger plans."

	para "You'll come to"
	line "appreciate TEAM"

	para "ROCKET's true"
	line "power soon enough."

	para "Enjoy yourself"
	line "while you can…"

	para "Fufufufu…"
	done

WhirlIslandB2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 11,  5, WHIRL_ISLAND_B1F, 7
	warp_event  7, 11, WHIRL_ISLAND_B1F, 8
	warp_event  7, 25, WHIRL_ISLAND_LUGIA_CHAMBER, 1
	warp_event 13, 33, WHIRL_ISLAND_SW, 5

	def_coord_events

	def_bg_events

	def_object_events
	object_event 10, 30, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ArianaLugiaCave, EVENT_BEAT_ROCKET_EXECUTIVEF_2
	object_event 10, 11, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, WhirlIslandB2FFullRestore, EVENT_WHIRL_ISLAND_B2F_FULL_RESTORE
	object_event  6,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, WhirlIslandB2FMaxRevive, EVENT_WHIRL_ISLAND_B2F_MAX_REVIVE
	object_event  5, 12, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, WhirlIslandB2FMaxElixer, EVENT_WHIRL_ISLAND_B2F_MAX_ELIXER
