if (dig == 1)
{
	x = xstart + random_range(-5,5);
}

if (keyboard_check_pressed(ord("Z")) and dig == 0)
{
	alarm[1] = 6;
	dig = 1;
	hp -= 1;
	scr_sound_3d(sfx_breakblock1, x, y)
}

if (hp <= 0)
{
	with (obj_player)
	{
		visible = true;
		grounded = false;
		jumpstop = true
		state = states.punch
		sprite_index = spr_player_uppercut
		vsp -= 14
		scr_sound_3d(sfx_breakblock2, x, y)
		scr_sound_3d(v_pep_wahoo, x, y)
		create_debris(x + random_range(0, 32), y + random_range(0, 64), spr_destroyable_debris)
	}
	instance_destroy()
}
else
with (obj_player)
{
	state = states.still;
}
