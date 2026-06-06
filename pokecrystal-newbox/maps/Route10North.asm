	object_const_def
	const ROUTE10NORTH_ZAPDOS

Route10North_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, Route10NorthZapdosCallback

Route10NorthZapdosCallback:
	checkevent EVENT_BEAT_BLUE
	iffalse .NoAppear
	checkevent ROUTE10NORTH_ZAPDOS
	iftrue .NoAppear
	readvar VAR_WEEKDAY
	ifequal TUESDAY, .Appear
.NoAppear:
	disappear ROUTE10NORTH_ZAPDOS
	endcallback

.Appear:
	appear ROUTE10NORTH_ZAPDOS
	endcallback

Route10NorthZapdos:
	faceplayer
	cry ZAPDOS
	loadwildmon ZAPDOS, 100
	startbattle
	disappear ROUTE10NORTH_ZAPDOS
	setevent ROUTE10NORTH_ZAPDOS
	reloadmapafterbattle
	end

PowerPlantSign:
	jumptext PowerPlantSignText

Route10PokecenterSign:
	jumpstd PokecenterSignScript

PowerPlantSignText:
	text "KANTO POWER PLANT"
	done

Route10North_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 11,  1, ROUTE_10_POKECENTER_1F, 1
	warp_event  3,  9, POWER_PLANT, 1

	def_coord_events

	def_bg_events
	bg_event  5, 11, BGEVENT_READ, PowerPlantSign
	bg_event 12,  1, BGEVENT_READ, Route10PokecenterSign

	def_object_events
	object_event  9, 14, SPRITE_MOLTRES, SPRITEMOVEDATA_POKEMON, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route10NorthZapdos, EVENT_ROUTE10NORTH_ZAPDOS
