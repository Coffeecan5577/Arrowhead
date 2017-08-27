/// @description Get Player's Input:
//Assigning variables to player movement.
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);

//Movement Controls (Keyboard)
var move = key_right - key_left;
if (move == -1)
{
	dir = -1;
}
else if (move == 1)
{
	dir = 1;
}

hsp = move * run_spd;


//Horizontal Collisions:
if (place_meeting(x + hsp, y, obj_lvl_tile))
{
	while(!place_meeting(x + sign(hsp), y, obj_lvl_tile))
	{
		x += sign_hsp;
	}
	hsp = 0;
}

//Vertical Collisions:
if (place_meeting(x, y + vsp, obj_lvl_tile))
{
	while(!place_meeting(x, y + sign(vsp), obj_lvl_tile))
	{
		x += sign_hsp;
	}
	vsp = 0;
}

x += hsp;










//No need to modify vsp for a platformer.

//Code chunk for jumps
/*
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

*/

//Make character jump
/*
{
	if (keyboard_check_pressed(vk_space)) && (place_meeting(x, y + vsp, obj_ground_parent)) || (gamepad_button_check_pressed(0, gpad_A)) && (place_meeting(x, y + vsp, obj_ground_parent))
	{
		//spr_index = spr_arrow_jump.
		//no image speed, since it's only one frame for now.
		//play jump sound once created.
		//vsp = -jump_spd;
	}
}
*/


//end jump section
//Double jumps are a possibility later on.


//sprite animation section:
//First we need a way to determine which way Arrowhead is facing through the move variable.
//Idle animations

if (dir == 1 && hsp == 0)
{
	sprite_index = spr_player_idle_right;
	image_speed = 0.5;
}

else if (dir == -1 && hsp == 0)
{
	sprite_index = spr_player_idle_left;
	image_speed = 0.5;
}

//Now for the running animations.
if (hsp > 0)
{
	sprite_index = spr_player_run_right;
	image_speed = 0.8;
}
else if (hsp < 0)
{
	sprite_index = spr_player_run_left;
	image_speed = 0.8;
}






