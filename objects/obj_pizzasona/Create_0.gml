//idlespr = spr_pizzasona1;
//throwspr = spr_pizzasona1throw;
//transitionspr = spr_pizzasona1trans;
otherindex = 0;
showtext = false;
state = states.normal;
image_speed = 0.35;
depth = 0;
scoretogive = 150
throwingcollects = false
movespeed = 0
adjusted_y = 0
var r = -1;
while (r == -1)
{
	r = irandom_range(1, 17);
}
idlespr = asset_get_index(string_concat("spr_pizzasona", r));
throwspr = asset_get_index(string_concat("spr_pizzasona", r, "throw"));
transitionspr = asset_get_index(string_concat("spr_pizzasona", r, "trans"));