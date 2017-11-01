if (!keyboard_check_released(vk_lshift) && global.launch_prep == 1)
{
	instance_create_layer(obj_bow.x, obj_bow.y - 75, "lvl_objects", obj_power_meter);
	//Also create the object that handles launch power.
	instance_create_layer(obj_bow.x, obj_bow.y - 100, "lvl_objects", obj_power_management);
}

//This object will handle creating the meter and the object that handles the sprites.