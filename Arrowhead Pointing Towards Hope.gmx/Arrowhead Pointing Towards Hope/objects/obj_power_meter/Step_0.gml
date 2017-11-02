//If there is a collision between the arrow and the bow, and the sprites are changed, and the shift key is not released, create the object, and set the bool
image_speed = 0;

//Debugging the animation: 10/31/17
//NOTE!!!!!: image_index is a floating point by default. Need to round to fix the issue.


//if lshift or RT are released before launching, destroy the object.
if (keyboard_check_released(vk_lshift) && instance_exists(self))
{
	//Destroy the power meter
	instance_destroy(self);
	instance_destroy(obj_manage_launch_sprites);
}

//Same thing will apply when we have launched.


if (global.arrow_launch == 1)
{
	instance_destroy(self);
	instance_destroy(obj_manage_launch_sprites);
}

//Object will handle it's own creation and destruction settings.



