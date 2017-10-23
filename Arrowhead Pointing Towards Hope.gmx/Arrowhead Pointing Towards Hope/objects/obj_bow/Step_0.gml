//Change animation speed
image_speed = 0.65;

if (place_meeting(x, y, obj_player) && keyboard_check(vk_lshift) && global.bow_pos == 1)
{
	sprite_index = spr_bow_pull_right;
	image_speed = 0;
}
else if (place_meeting(x, y, obj_player) && keyboard_check(vk_lshift) && global.bow_pos == -1)
{
	sprite_index = spr_bow_pull_left;
	image_speed = 0;
}

//We do not need the bow to handle the power meter's creation.



