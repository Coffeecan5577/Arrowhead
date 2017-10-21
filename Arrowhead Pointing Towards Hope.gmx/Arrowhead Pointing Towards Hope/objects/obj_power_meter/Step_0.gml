//set sprite speed on creation:
image_speed = 0.7;


//if lshift or RT are released before launching, destroy the object.
if (keyboard_check_released(vk_lshift))
{
	//switch sprite back, reverse animation, then destroy object.
	sprite_index = spr_power_meter;
	image_index = 23;
	image_speed = -0.7;
	if (image_index == 1)
	{
		instance_destroy();
	}
}

//Same thing will apply when we have launched.

if (global.arrow_launch == 1)
{
	sprite_index = spr_power_meter;
	image_index = 23;
	image_speed = -0.7;
	if (image_index == 1)
	{
		instance_destroy();
	}
}