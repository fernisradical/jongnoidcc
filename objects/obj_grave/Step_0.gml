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
	repeat(3)
	{
		with (create_debris(x + random_range(-49, 49), y - 20, spr_dirtdebris))
		{
			hsp = random_range(-5, 5)
	        vsp = random_range(-6, -4)
	        image_speed = 0
	        image_index = random_range(0, (image_number - 1))
			depth = -200
		}
	}
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
		scr_sound_pitched(sfx_breakblock2, 0.9, 1.1)
		scr_sound_3d(v_pep_wahoo, x, y)
	}
	create_effect(x, y - 60, spr_superjumpexplosion)
	repeat(10)
	{
		with (create_debris(x + random_range(-49, 49), y - 20, spr_gravedebris))
		{
			hsp = random_range(-5, 5)
	        vsp = random_range(-20, -15)
	        image_speed = 0
	        image_index = random_range(0, (image_number - 1))
		}
		with (create_debris(x + random_range(-49, 49), y - 20, spr_dirtdebris))
		{
			hsp = random_range(-5, 5)
	        vsp = random_range(-15, -10)
	        image_speed = 0
	        image_index = random_range(0, (image_number - 1))
		}
	}
	instance_destroy()
	ds_list_add(global.ds_saveroom, id)
}
else
with (obj_player)
{
	state = states.still;
}
