function hud_get_visible(hideforboss = true)
{
	return !string_starts_with(room_get_name(room), "tower") &&
			!string_starts_with(room_get_name(room), "outside") &&
		   !(global.boss_room && hideforboss) &&
		   room != rank_room &&
		   room != rm_timesup &&
		   room != mainmenu &&
		   global.option_showhud;
}
