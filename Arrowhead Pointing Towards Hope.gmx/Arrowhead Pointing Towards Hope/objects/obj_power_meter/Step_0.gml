//set sprite speed on creation:
image_speed = 0.7;

//if creation animation is finished, switch to other sprite
if (image_index == 23)
{
	sprite_index = spr_power_meter_build;
	image_speed = 0;
}

//if lshift or RT are released before launching, but after script is called, destroy the object.
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