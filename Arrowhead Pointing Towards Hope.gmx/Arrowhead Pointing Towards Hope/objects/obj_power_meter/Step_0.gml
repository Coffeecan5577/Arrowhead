//If there is a collision between the arrow and the bow, and the sprites are changed, and the shift key is not released, create the object, and set the bool
image_speed = 0;
image_index = 0;

//Debugging the animation: 10/31/17
//NOTE!!!!!: image_index is a floating point by default. Need to round to fix the issue.


//if lshift or RT are released before launching, destroy the object.
if (keyboard_check_released(vk_lshift) && sprite_index == spr_power_meter_build)
{
	//Destroy the power meter
	instance_destroy(obj_power_meter);
}

//Same thing will apply when we have launched.


if (global.arrow_launch == 1 && sprite_index == spr_power_meter_build)
{
	instance_destroy(obj_power_meter);
}

//Object will handle it's own creation and destruction settings.



