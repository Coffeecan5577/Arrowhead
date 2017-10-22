///Modify the arrow, bow, and power meter sprites based on the power value.

with (obj_power_meter)
{
	if (sprite_index == spr_power_meter_build && keyboard_check(vk_left) && global.launch_power > 1.10)
	{
		//Reverse animation to show power dropping
		image_index -= 1;
		//Reduce launch power value.
		global.launch_power -= 0.01; //Deduct and increment by this much for a start.
	}
	else if (sprite_index == spr_power_meter_build && keyboard_check(vk_right) && global.launch_power <= 1.10)
	{
		//Increment animation to show power increasing
		image_index += 1;
		//increase power value
		global.launch_power += 0.01;
	}
	
	//Monitoring launch power minimum and maximum values
	//1. min value check
	if (global.launch_power <= 1.10 && keyboard_check(vk_left))
	{
		//set image speed and index to 0;
		image_index = 0;
		image_speed = 0;
		//Keep launch power at 1.10
		global.launch_power = 1.10;
	}
	
	// 2. Max value check.
	if (global.launch_power >= 1.30 && keyboard_check(vk_right))
	{
		image_index = 23; //keep it at the last frame
		image_speed = 0;
		//keep launch powet at 1.30, for now.
		global.launch_power = 1.30;
	}
	
	
}