/// @description Get Player's Input:

///Player Movement (Keyboard)
if (keyboard_check(ord("D")) && !keyboard_check(ord("A")))
{
	hsp += accel_spd;
	hsp = min(hsp, max_spd);
}

if (hsp > 0) && !(keyboard_check(ord("D")))
{
	hsp -= decel_spd;
}

if (keyboard_check(ord("A"))) && !(keyboard_check(ord("D")))
{
	hsp -= accel_spd;
	hsp = max(hsp, -max_spd);
}

if (hsp < 0) && !(keyboard_check(ord("A")))
{
	hsp += decel_spd;
}

if ((keyboard_check(ord("A"))) && (keyboard_check(ord("D"))) || !(keyboard_check(ord("A"))) && !(keyboard_check(ord("D"))))
{
	hsp = 0;
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
//Double jumps are a possbility later on.


//sprite animation section
if ((mvmt == false) && (place_meeting(x, y + vsp, obj_ground_parent)))
{
	sprite_index = spr_arrow_idle;
	image_speed = 0.3;
}

if ((mvmt) && (place_meeting(x, y + vsp, obj_ground_parent)))
{
	sprite_index = spr_arrow_running;
	image_speed = 0.4;
}
 
 





