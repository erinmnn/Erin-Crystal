	object_const_def

SeafoamIslandsB2F_MapScripts:
	def_scene_scripts

	def_callbacks

SeafoamIslandsB2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events	
	warp_event  5,  3, SEAFOAM_ISLANDS_B1F, 4 ;up ladder
	warp_event 13,  7, SEAFOAM_ISLANDS_B1F, 5 ;up ladder
	warp_event 19, 15, SEAFOAM_ISLANDS_B1F, 6 ;up ladder
	warp_event 25, 13, SEAFOAM_ISLANDS_B1F, 7 ;up ladder
	warp_event 17,  6, SEAFOAM_ISLANDS_B1F, 8 ;plop
	warp_event 24,  6, SEAFOAM_ISLANDS_B1F, 9 ;plop
	warp_event  5, 13, SEAFOAM_ISLANDS_B3F, 1 ;down ladder
	warp_event 25,  3, SEAFOAM_ISLANDS_B3F, 2 ;down ladder
	warp_event 25, 15, SEAFOAM_ISLANDS_B3F, 3 ;down ladder
	warp_event 19,  6, SEAFOAM_ISLANDS_B3F, 4 ;hole
	warp_event 23,  6, SEAFOAM_ISLANDS_B3F, 5 ;hole

	def_coord_events

	def_bg_events

	def_object_events
