SeafoamIslands1F_MapScripts:
	def_scene_scripts

	def_callbacks

SeafoamIslands1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5, 15, ROUTE_20, 1
	warp_event 25,  3, SEAFOAM_ISLANDS_B1F, 1
	warp_event 18,  7, SEAFOAM_ISLANDS_B1F, 2
	warp_event 24,  7, SEAFOAM_ISLANDS_B1F, 3 

	def_coord_events

	def_bg_events

	def_object_events
