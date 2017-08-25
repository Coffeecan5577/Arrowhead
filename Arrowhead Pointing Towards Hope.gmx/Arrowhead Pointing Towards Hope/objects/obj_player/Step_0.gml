/// @description Get Player's Input:

//Movement Controls (Keyboard)
if (keyboard_check(vk_right)) && !(keyboard_check(vk_left))
{
	dir = 1;
	hsp += accel_spd;
	hsp = min(hsp, max_spd);
}

if (hsp > 0) && !(keyboard_check(vk_right))
{
	hsp -= decel_spd;
}

if (keyboard_check(vk_left)) && !(keyboard_check(vk_right))
{
	dir = -1;
	hsp -= accel_spd;
	hsp = max(hsp, -max_spd);
}

if (hsp < 0) && !(keyboard_check(vk_left))
{
	hsp += decel_spd;
}

if ((keyboard_check(vk_left)) && (keyboard_check(vk_right)) || !(keyboard_check(vk_left)) && !(keyboard_check(vk_right)))
{
	hsp = 0; 
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
		//vsp = -jump_spd;
	}
}


//end jump section
//Double jumps are a possibility later on.


//sprite animation section

//idle animations:
if ((hsp == 0) && (place_meeting(x, y + vsp, obj_ground_parent)) && direction == 1)
{
	sprite_index = spr_player_idle_right;
	image_speed = 0.3;
}
if ((hsp == 0) && (place_meeting(x, y + vsp, obj_ground_parent)) && direction == -1)
{
	sprite_index = spr_player_idle_left;
	image_speed = 0.3;
}

//running animations:
if ((hsp > 0) && (place_meeting(x, y + vsp, obj_ground_parent)) && direction == 1)
{
	sprite_index = spr_player_run_right;
	if (hsp <= max_spd)
	{
		image_speed = 0.3
	}
	else
	{
		image_speed = 0.5;
	}
}

if ((hsp < 0) && (place_meeting(x, y + vsp, obj_ground_parent)) && direction == -1)
{
	sprite_index = spr_player_run_left;
	if (hsp >= -max_spd)
	{
		image_speed = 0.3
	}
	else
	{
		image_speed = 0.5;
	}
}


//TODO: Modify the sprite index based on dir value.
if ((hsp != 0) && (place_meeting(x, y + vsp, obj_ground_parent)))
{
	sprite_index = spr_arrow_running;
	image_speed = 0.4;
}
 
 





