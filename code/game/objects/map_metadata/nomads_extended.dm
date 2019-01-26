#define NO_WINNER "The round is proceeding normally."
/obj/map_metadata/nomads_extended
	ID = MAP_NOMADS_EXTENDED
	title = "Nomads: Oil Rush (225x225x2)"
	lobby_icon_state = "civ13"
	caribbean_blocking_area_types = list(/area/caribbean/no_mans_land/invisible_wall/)
	respawn_delay = 6000 // q0 minutes!
	squad_spawn_locations = FALSE
//	min_autobalance_players = 90
	faction_organization = list(
		CIVILIAN,)
	available_subfactions = list(
		)
	roundend_condition_sides = list(
		list(CIVILIAN) = /area/caribbean/british
		)
	civilizations = TRUE
	var/tribes_nr = 1
	faction_distribution_coeffs = list(CIVILIAN = 1)
	battle_name = "the civilizations"
	mission_start_message = "<big>To win, your faction must collect <b>3000</b> liters of Oil! The grace wall will be up for 40 minutes.</big><br><b>Wiki Guide: http://1713.eu/wiki/index.php/Nomads</b>"
	ambience = list('sound/ambience/jungle1.ogg')
	faction1 = CIVILIAN
	availablefactions = list("Nomad")
	songs = list(
		"Empire Earth Intro:1" = 'sound/music/empire_earth_intro.ogg',)
	nomads = TRUE
	gamemode = "Oil Rush"
	ordinal_age = 5
	age = "1903"
	age1_done = TRUE
	age2_done = TRUE
	age3_done = TRUE
	age4_done = TRUE
	age5_done = TRUE
	research_active = FALSE
	default_research = 135

	var/oiltarget = 3000
/obj/map_metadata/nomads_extended/New()
	..()
	spawn(1200)
		check_oil()
	spawn(18000)
		seasons()

/obj/map_metadata/nomads_extended/proc/check_oil()
	if (processes.ticker.playtime_elapsed >= 24000 || admin_ended_all_grace_periods)
		if (custom_faction_nr.len >= 1)
			world << "<big><b>Current Status:</b></big>"
		for(var/i = 1, i <= custom_faction_nr.len, i++)
			custom_civs[custom_faction_nr[i]][5]=0
			for (var/obj/structure/oil_deposits/OD in world)
				if (OD.faction == custom_faction_nr[i])
					custom_civs[custom_faction_nr[i]][5] += OD.storedvalue
			if (custom_civs[custom_faction_nr[i]][5] > 0)
				world << "<b>[custom_faction_nr[i]]:</b> [custom_civs[custom_faction_nr[i]][5]] of 3000"

	spawn(1200)
		check_oil()
/obj/map_metadata/nomads_extended/faction2_can_cross_blocks()
	return (processes.ticker.playtime_elapsed >= 24000 || admin_ended_all_grace_periods)

/obj/map_metadata/nomads_extended/faction1_can_cross_blocks()
	return (processes.ticker.playtime_elapsed >= 24000 || admin_ended_all_grace_periods)

/obj/map_metadata/nomads_extended/cross_message(faction)
	return "<b><big>The grace wall is lifted!</big></b>"

/obj/map_metadata/nomads_extended/proc/seasons()
	if (season == "WINTER")
		season = "SPRING"
		world << "<big>The weather is getting warmer. It is now <b>Spring</b>.</big>"
		for (var/obj/structure/wild/tree/live_tree/TREES)
			TREES.update_icon()
		for (var/turf/floor/dirt/winter/D)
			if (prob(60))
				D.ChangeTurf(/turf/floor/dirt)
		for (var/turf/floor/winter/grass/G)
			if (prob(60))
				G.ChangeTurf(/turf/floor/plating/grass/wild)
		for (var/turf/floor/dirt/burned/B)
			if (prob(60))
				B.ChangeTurf(/turf/floor/plating/grass/wild)
		spawn(150)
			change_weather(WEATHER_NONE)
			for (var/obj/structure/window/snowwall/SW1)
				if (prob(60))
					qdel(SW1)
			for (var/obj/covers/snow_wall/SW2)
				if (prob(60))
					qdel(SW2)
			for (var/obj/item/weapon/snowwall/SW3)
				if (prob(60))
					qdel(SW3)
		spawn(1500)
		for (var/turf/floor/plating/beach/water/ice/salty/SW)
			SW.ChangeTurf(/turf/floor/plating/beach/water/shallowsaltwater)
		for (var/turf/floor/plating/beach/water/ice/W)
			W.ChangeTurf(/turf/floor/plating/beach/water)
		spawn(3000)
			for (var/turf/floor/dirt/D)
				if (istype(D, /turf/floor/dirt/winter))
					D.ChangeTurf(/turf/floor/dirt)
			for (var/turf/floor/winter/grass/G)
				if (istype(G, /turf/floor/winter/grass))
					G.ChangeTurf(/turf/floor/plating/grass/wild)
			for (var/obj/structure/window/snowwall/SW1)
				qdel(SW1)
			for (var/obj/covers/snow_wall/SW2)
				qdel(SW2)
			for (var/obj/item/weapon/snowwall/SW3)
				qdel(SW3)
	else if (season == "SUMMER")
		season = "FALL"
		world << "<big>The leaves start to fall and the weather gets colder. It is now <b>Fall</b>.</big>"
		for (var/obj/structure/wild/tree/live_tree/TREES)
			TREES.update_icon()
		for (var/turf/floor/dirt/D)
			D.update_icon()
		for (var/turf/floor/plating/grass/wild/G)
			G.update_icon()
		spawn(100)
			change_weather(WEATHER_RAIN)
		spawn(15000)
			change_weather(WEATHER_SNOW)
			for (var/turf/floor/dirt/D)
				var/area/A = get_area(D)
				if (prob(40) && A.location != AREA_INSIDE && A.z > 1)
					D.ChangeTurf(/turf/floor/dirt/winter)
			for (var/turf/floor/plating/grass/wild/G)
				if (prob(40))
					G.ChangeTurf(/turf/floor/winter/grass)
			spawn(1200)
				for (var/turf/floor/dirt/D)
					var/area/A = get_area(D)
					if (!istype(D,/turf/floor/dirt/winter))
						if (prob(50) && A.location != AREA_INSIDE && A.z > 1)
							D.ChangeTurf(/turf/floor/dirt/winter)
				for (var/turf/floor/plating/grass/wild/G)
					if (prob(50))
						G.ChangeTurf(/turf/floor/winter/grass)
	else if (season == "FALL")
		season = "WINTER"
		world << "<big>The weather gets very cold. <b>Winter</b> has arrived.</big>"
		for (var/obj/structure/wild/tree/live_tree/TREES)
			TREES.update_icon()
		for (var/turf/floor/dirt/D)
			if (!istype(D,/turf/floor/dirt/winter))
				var/area/A = get_area(D)
				if  (A.location != AREA_INSIDE && A.z > 1)
					D.ChangeTurf(/turf/floor/dirt/winter)
		for (var/turf/floor/plating/grass/wild/G)
			G.ChangeTurf(/turf/floor/winter/grass)
		spawn(100)
			change_weather(WEATHER_SNOW)
		spawn(800)
		for (var/turf/floor/plating/beach/water/shallowsaltwater/SW)
			if (SW.water_level <= 50 && SW.z > 1)
				SW.ChangeTurf(/turf/floor/plating/beach/water/ice/salty)
		for (var/turf/floor/plating/beach/water/W)
			if (W.water_level <= 50 && W.z > 1)
				W.ChangeTurf(/turf/floor/plating/beach/water/ice)

		spawn(12000)
			for (var/turf/floor/dirt/winter/D)
				if (prob(20))
					D.ChangeTurf(/turf/floor/dirt)
			for (var/turf/floor/winter/grass/G)
				if (prob(20))
					G.ChangeTurf(/turf/floor/plating/grass/wild)
	else if (season == "SPRING")
		season = "SUMMER"
		world << "<big>The weather is warm. It is now <b>Summer</b>.</big>"
		for (var/obj/structure/wild/tree/live_tree/TREES)
			TREES.update_icon()
		for (var/turf/floor/dirt/winter/D)
			if (istype(D, /turf/floor/dirt/winter))
				D.ChangeTurf(/turf/floor/dirt)
		for (var/turf/floor/winter/grass/G)
			if (istype(G, /turf/floor/winter/grass))
				G.ChangeTurf(/turf/floor/plating/grass/wild)
		spawn(100)
			change_weather(WEATHER_NONE)
	spawn(18000)
		seasons()

/obj/map_metadata/nomads_extended/job_enabled_specialcheck(var/datum/job/J)
	if (J.is_nomad == TRUE)
		. = TRUE
	else
		. = FALSE
/obj/map_metadata/nomads_extended/update_win_condition()
	if (win_condition_spam_check)
		return FALSE
	for(var/i = 1, i <= custom_faction_nr.len, i++)
		if (custom_civs[custom_faction_nr[i]][5] >= oiltarget)
			var/message = "[custom_faction_nr[i]] has reached [oiltarget] liters of oil! They have won!"
			world << "<font size = 4><span class = 'notice'>[message]</span></font>"
			show_global_battle_report(null)
			win_condition_spam_check = TRUE
			ticker.finished = TRUE
			return TRUE
#undef NO_WINNER