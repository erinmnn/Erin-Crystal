	object_const_def

SeafoamIslandsB3F_MapScripts:
	def_scene_scripts

	def_callbacks

SeafoamIslandsB3F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5, 11, SEAFOAM_ISLANDS_B2F, 7 ;up ladder
	warp_event 25,  1, SEAFOAM_ISLANDS_B2F, 8 ;up ladder
	warp_event 25, 13, SEAFOAM_ISLANDS_B2F, 9 ;up ladder
	warp_event 16,  5, SEAFOAM_ISLANDS_B2F, 10 ;plop
	warp_event 23,  6, SEAFOAM_ISLANDS_B2F, 11 ;plop
	warp_event 25,  3, SEAFOAM_ISLANDS_B4F, 1 ;down ladder
	warp_event  9,  7, SEAFOAM_ISLANDS_B4F, 2 ;down ladder
	warp_event  3, 16, SEAFOAM_ISLANDS_B4F, 3 ;hole
	warp_event  6, 15, SEAFOAM_ISLANDS_B4F, 4 ;hole

	def_coord_events

	def_bg_events

	def_object_events
