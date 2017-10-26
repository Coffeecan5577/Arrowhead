//If there is a collision between the arrow and the bow, and the sprites are changed, and the shift key is not released, create the object, and set the bool
image_speed = 0.4;

if (sprite_index == spr_power_meter_build)
{
	image_speed = 0;
}


//if lshift or RT are released before launching, destroy the object.
if (keyboard_check_released(vk_lshift) && sprite_index == spr_power_meter_build)
{
	//switch sprite back, reverse animation, then destroy object.
	sprite_index = spr_power_meter;
	image_index = 24;
	image_speed = -0.7;
	if (sprite_index == spr_power_meter && image_index == 0)
	{
		instance_destroy();
	}
}

//Same thing will apply when we have launched.

/*
if (global.arrow_launch == 1 && sprite_index == spr_power_meter_build)
{
	sprite_index = spr_power_meter;
	image_index = 23;
	image_speed = -0.7;
	if (image_index == 1)
	{
		instance_destroy();
	}
}
*/


//Object will handle it's own creation and destrcution settings.



