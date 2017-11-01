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
	
		/*Monitoring launch power minimum and maximum values
		//1. min value check
		if (global.launch_power < 1.10 && keyboard_check(vk_left))
		{
			//set image speed and index to 0;
			image_index = 0;
			//Keep launch power at 1.10
			global.launch_power = 1.10;
		}
	
		// 2. Max value check.
		else if (global.launch_power > 1.30 && keyboard_check(vk_right))
		{
			image_index = 40; //keep it at the last frame
			//keep launch power at 1.30, for now.
			global.launch_power = 1.30;
		}
		*/
	}
}



