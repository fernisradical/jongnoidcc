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
		state = states.normal
		vsp -= 100
		hsp = 300
		particle_create(x, y, particles.genericpoof, xscale, 1, spr_explosion)
		scr_sound_3d(sfx_breakblock2, x, y)
		scr_sound_3d(sfx_explosion, x, y)
	}
	instance_destroy()
}
else
with (obj_player)
{
	state = states.still;
}
