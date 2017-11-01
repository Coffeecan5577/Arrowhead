if (!keyboard_check_released(vk_lshift) && global.launch_prep == 1)
{
	instance_create(obj_bow.x, obj_bow.y - 75, obj_power_meter);
}

if (global.launch_prep == 0 && instance_exists(obj_power_meter))
{
	//Destroy the meter.
}
