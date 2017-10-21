//1. Change the sprite, and move the player to the center of the bow sprite
//2. Change launch prep sprite based on bow direction. We will need a global variable.
with (obj_player)
{
	while (keyboard_check(vk_lshift))
	{
		if (dir == 1)
		{
			sprite_index = spr_arrow_aim_right;
			image_speed = 0;
		}
		else if (dir == -1)
		{
			sprite_index = spr_arrow_aim_left;
			image_speed = 0;
		}
		
		//if we press arrow keys, we don't move.
		if (keyboard_check(vk_right) || keyboard_check(vk_left))
		{
			velocity_[vector2_x] = 0;
		}
		 
	
	} 
}
