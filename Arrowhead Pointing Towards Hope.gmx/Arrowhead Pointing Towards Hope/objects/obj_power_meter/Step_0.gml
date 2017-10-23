//If there is a collision between the arrow and the bow, and the sprites are changed, and the shift key is not released, create the object, and set the bool
if (obj_player.sprite_index == spr_arrow_aim_right || obj_player.sprite_index == spr_arrow_aim_left && obj_bow.sprite_index == spr_bow_pull_right || obj_bow.sprite_index == spr_bow_pull_left && !keyboard_check_released(vk_lshift))
{
	instance_create_layer(obj_bow.x, obj_bow.y - 10, "lvl_objects", obj_power_meter);
}
else
{
	// Do not create it.
}

//Meter creation check
if (instance_exists(obj_power_meter))
{
	meter_is_created = true;
}

if (meter_is_created && keyboard_check_pressed(vk_lshift) || keyboard_check(vk_lshift))
{
	// Do not create any more.
}


//set sprite speed on creation:
image_speed = 0.7;

//Once animation ends, switch to power meter build sprite.
if (sprite_index == spr_power_meter && image_index == 23)
{
	sprite_index = spr_power_meter_build;
	image_speed = 0;
}


//if lshift or RT are released before launching, destroy the object.
if (keyboard_check_released(vk_lshift) && sprite_index == spr_power_meter_build)
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

//Object will handle it's own creation and destrcution settings.

