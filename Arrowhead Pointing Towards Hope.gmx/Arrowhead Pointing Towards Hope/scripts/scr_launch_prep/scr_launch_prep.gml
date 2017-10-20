with(obj_player)
{
	
	//1. Change the sprite, and move the player to the center of the bow sprite
	//2. Change launch prep sprite based on bow direction. We will need a global variable.
	if (dir == 1)
	{
		sprite_index = spr_arrow_prep_right;
		image_speed = 0.7;
	}
	else
	{
		sprite_index = spr_arrow_prep_left;
		image_speed = 0.7;
	}
	
	//Move sprite to center of the bow based on a drawn path.
	
}
