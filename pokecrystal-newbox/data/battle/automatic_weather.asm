; AutomaticWeatherEffects indexes
	const_def 1
	const AUTOMATIC_SUN
	const AUTOMATIC_RAIN
	const AUTOMATIC_SANDSTORM

AutomaticWeatherMaps:
MACRO auto_weather_map
;\1: map id
;\2: AUTOMATIC_* weather index
	map_id \1
	db \2
ENDM
	auto_weather_map ROUTE_41, AUTOMATIC_RAIN
	auto_weather_map CERULEAN_GYM, AUTOMATIC_RAIN
	auto_weather_map SEAFOAM_ISLANDS_B4F, AUTOMATIC_RAIN	
	auto_weather_map TIN_TOWER_3F, AUTOMATIC_SUN
	auto_weather_map TIN_TOWER_4F, AUTOMATIC_SUN
	auto_weather_map TIN_TOWER_5F, AUTOMATIC_SUN
	auto_weather_map TIN_TOWER_6F, AUTOMATIC_SUN
	auto_weather_map TIN_TOWER_7F, AUTOMATIC_SUN
	auto_weather_map TIN_TOWER_8F, AUTOMATIC_SUN
	auto_weather_map TIN_TOWER_9F, AUTOMATIC_SUN
	auto_weather_map TIN_TOWER_ROOF, AUTOMATIC_SUN
	auto_weather_map SEAFOAM_GYM, AUTOMATIC_SUN
	auto_weather_map ROUTE_45, AUTOMATIC_SANDSTORM
	auto_weather_map ROUTE_3, AUTOMATIC_SANDSTORM
	db 0 ; end

AutomaticWeatherEffects:
; entries correspond to AUTOMATIC_* constants
MACRO auto_weather_effect
;\1: battle weather
;\2: animation
;\3: text
	db \1
	dw \2
	dw \3
ENDM
	auto_weather_effect WEATHER_SUN, SUNNY_DAY, SunGotBrightText
	auto_weather_effect WEATHER_RAIN, RAIN_DANCE, DownpourText
	auto_weather_effect WEATHER_SANDSTORM, ANIM_IN_SANDSTORM, SandstormBrewedText