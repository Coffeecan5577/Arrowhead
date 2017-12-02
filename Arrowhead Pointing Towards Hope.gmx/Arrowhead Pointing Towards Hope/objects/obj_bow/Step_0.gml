//Change animation speed
image_speed = 0.5;

//Setting up a instance_place collision variable.

bow_collide = instance_place(x, y, obj_player);


//TODO: 12/2/17 - Reworking bow collisions and sprites.
if (bow_collide && keyboard_check(vk_shift))
{
	
}

else
{
	sprite_index = spr_bow_idle;
}


if (instance_exists(obj_power_meter))
{
	if (sprite_index == spr_bow_pull_left || sprite_index == spr_bow_pull_right)
	{
		if (global.launch_power == 1.10)
		{
			image_index = 0;
		}
		else if (global.launch_power > 1.10 && global.launch_power <= 1.20)
		{
			image_index = 1;
		}
		else if (global.launch_power >= 1.20 && global.launch_power <= 1.35)
		{
			image_index = 2; 
		}
		else if (global.launch_power >= 1.35 && global.launch_power <= 1.50)
		{
			image_index = 3;
		}
	}
}

