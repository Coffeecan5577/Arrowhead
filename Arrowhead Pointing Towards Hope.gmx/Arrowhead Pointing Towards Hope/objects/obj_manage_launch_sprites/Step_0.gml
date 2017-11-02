///Modify the arrow, bow, and power meter sprites based on the power value.
//If the power meter exists:
if (instance_exists(obj_power_meter))
{
	with (obj_power_meter)
	{
		if (keyboard_check(vk_left) && global.launch_power >= 1.10 && floor(image_index) > 0)
		{
			//Reverse animation to show power dropping
			image_index--;
			//Reduce launch power value.
			global.launch_power -= 0.01; //Deduct and increment by this much for a start.
		}
		else if (keyboard_check(vk_right) && global.launch_power <= 1.50 && floor(image_index) < 40)
		{
			//Increment animation to show power increasing
			image_index++;
			//increase power value
			global.launch_power += 0.01;
		}
	}
}

	



