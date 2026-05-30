	object_const_def

SeafoamIslandsB1F_MapScripts:
	def_scene_scripts

	def_callbacks

SeafoamIslandsB1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 25,  3, SEAFOAM_ISLANDS_1F, 2 ;up ladder
	warp_event 18,  7, SEAFOAM_ISLANDS_1F, 3 ;plop
	warp_event 24,  7, SEAFOAM_ISLANDS_1F, 4 ;plop
	warp_event  5,  3, SEAFOAM_ISLANDS_B2F, 1 ;down ladder
	warp_event 13,  7, SEAFOAM_ISLANDS_B2F, 2 ;down ladder
	warp_event 19, 15, SEAFOAM_ISLANDS_B2F, 3 ;down ladder
	warp_event 25, 11, SEAFOAM_ISLANDS_B2F, 4 ;down ladder
	warp_event 17,  6, SEAFOAM_ISLANDS_B2F, 5 ;hole
	warp_event 23,  6, SEAFOAM_ISLANDS_B2F, 6 ;hole

	def_coord_events

	def_bg_events

	def_object_events
