/// @description Get Player's Input:

	//Player Movement (Keyboard)
	if (keyboard_check_pressed(vk_right) && !keyboard_check_pressed(vk_left))
	{
		dir = 1;
		hsp += accel_spd;
		hsp = min(hsp, max_spd);
		//TODO: Increase speed of running animation to top speed
	}
	
	if (hsp > 0) && !(keyboard_check_pressed(vk_right))
	{
		hsp -= decel_spd;
		//TODO: Slow down running animation to idle.
	}




if (keyboard_check_pressed(vk_left)) && !(keyboard_check_pressed(vk_right))
{
	dir = -1;
	hsp -= accel_spd;
	hsp = max(hsp, -max_spd);
	//TODO: Increase speed of running animation to top speed
}

if (hsp < 0) && !(keyboard_check_pressed(vk_left))
{
	hsp += decel_spd;
	//TODO: Slow down running animation to idle.
}

if ((keyboard_check_pressed(vk_left)) && (keyboard_check_pressed(vk_right)) || !(keyboard_check_pressed(vk_left)) && !(keyboard_check_pressed(vk_right)))
{
	//hsp = 0; 
	//Check if this is the problem for now
}

//Controller joystick movement

if (gamepad_axis_value(0, gp_axislh) > 0.2) || (gamepad_axis_value(0, gp_axislh) < (-0.2)) //finish up later
{
	hsp = gamepad_axis_value(0, gp_axislh) * max_spd;
}
else
{
	hsp = 0;
}


//No need to modify vsp for a platformer.

//Code chunk for jumps
if (!place_meeting(x, y + (vsp / 2), obj_ground_parent))
{
	if (vsp < grav_max)
	{
		vsp += grav;
	}
}
else
{
	vsp = 0;
}


//Make character jump
{
	if (keyboard_check_pressed(vk_space)) && (place_meeting(x, y + vsp, obj_ground_parent)) || (gamepad_button_check_pressed(0, gpad_A)) && (place_meeting(x, y + vsp, obj_ground_parent))
	{
		//spr_index = spr_arrow_jump.
		//no image speed, since it's only one frame for now.
		//play jump sound once created.
		vsp = -jump_spd;
	}
}


//end jump section
//Double jumps are a possibility later on.


//sprite animation section
if ((hsp == 0) && (place_meeting(x, y + vsp, obj_ground_parent)))
{
	sprite_index = spr_arrow_idle;
	image_speed = 0.3;
}

//TODO: Modify the sprite index based on dir value.
if ((hsp != 0) && (place_meeting(x, y + vsp, obj_ground_parent)))
{
	sprite_index = spr_arrow_running;
	image_speed = 0.4;
}
 
 





