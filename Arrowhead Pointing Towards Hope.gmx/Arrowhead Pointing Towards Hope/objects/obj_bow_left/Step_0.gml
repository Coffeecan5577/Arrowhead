#region Setting up local variables.
//Change animation speed
image_speed = 0.5;

//Setting up a instance_place collision variable.
var bow_collide = instance_place(x, y, obj_player); //Detects collisions
#endregion

#region Detecting direction collision
if (bow_collide && keyboard_check(vk_lshift))
{
	sprite_index = spr_bow_pull_left;
	image_speed = 0;
}
else
{
	sprite_index = spr_bow_idle_left;
}
#endregion

#region Calculating launch power
if (instance_exists(obj_power_meter))
{
	if (sprite_index == spr_bow_pull_left)
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
#endregion

#region changing Sprites after launching
if (global.arrow_launch == 1)
{
	sprite_index = spr_bow_idle_left;
}
#endregion
