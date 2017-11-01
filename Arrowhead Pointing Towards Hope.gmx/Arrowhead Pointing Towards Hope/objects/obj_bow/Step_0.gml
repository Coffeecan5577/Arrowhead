//Change animation speed
image_speed = 0.65;

if (place_meeting(x, y, obj_player) && keyboard_check(vk_lshift) && global.bow_pos == 1)
{
	sprite_index = spr_bow_pull_right;
	image_index = 0;
	image_speed = 0;
}
else
{
	sprite_index = spr_bow_idle;
}

if (place_meeting(x, y, obj_player) && keyboard_check(vk_lshift) && global.bow_pos == -1)
{
	sprite_index = spr_bow_pull_left;
	image_speed = 0;
	image_index = 0;
}
else
{
	sprite_index = spr_bow_idle;
}


//The bow was in charge of handling the power meter's creation. This may fix the issue.

