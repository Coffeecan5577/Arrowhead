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
vsp = vsp + grav;

//It's faster to do a variable check, than a collision check.
/* Minimize amount of collision checks if possible. */
var on_ground = true; //On the ground by default.

//Horizontal Collisions:
if (place_meeting(x + hsp, y, obj_ground_parent))
{
	while(!place_meeting(x + sign(hsp), y, obj_ground_parent))
	{
		x += sign(hsp);
	}
	hsp = 0;
}

x += hsp;

//Vertical Collisions:
if (place_meeting(x, y + vsp, obj_ground_parent))
{
	while(!place_meeting(x, y + sign(vsp), obj_ground_parent))
	{
		y += sign(vsp);
	}
	vsp = 0;
	//set variable to determine whether we are touching the ground.
	 on_ground = true;
	 num_of_jumps = 1;
}

y += vsp;

//jumping
if (on_ground && key_jump && num_of_jumps == 1)
{
	on_ground = false; //We are in the air.
	vsp -= 10;
	num_of_jumps -= 1;
}

if (key_jump && num_of_jumps == 0)
{
	//Do nothing. We are out of jumps.
}



//end jump section
//Double jumps are a possibility later on.


//sprite animation section:
//First we need a way to determine which way Arrowhead is facing through the move variable.
//Idle animations

if (dir == 1 && hsp == 0)
{
	sprite_index = spr_player_idle_right;
	image_speed = 1; //This is a multiplier in GMS2
}

else if (dir == -1 && hsp == 0)
{
	sprite_index = spr_player_idle_left;
	image_speed = 1;
}

//Now for the running animations.
if (hsp > 0)
{
	sprite_index = spr_player_run_right;
	image_speed = 1;
}
else if (hsp < 0)
{
	sprite_index = spr_player_run_left;
	image_speed = 1;
}

//Jumping animations
if (on_ground == false && dir == 1) //If off the ground and facing right.
{
	//Play sprite animation and set speed.
	sprite_index = spr_player_jump_right;
	image_speed = 0.4;
}
	
else if (on_ground == false && dir == -1)
{
	sprite_index = spr_player_jump_left;
	image_speed = 0.4;
}

//Falling Animations:
if (sign(vsp) < 0 && dir == 1)
{
	sprite_index = spr_player_fall_right;
	image_speed = 1;
	if (image_index == 2)
	{
		image_speed = 0;
	}
}

else if (sign(vsp) < 0 && dir == -1)
{
	sprite_index = spr_player_fall_left;
	image_speed = 1;
	if (image_index == 2)
	{
		image_speed = 0; //Stop animation if we have finished it.
	}
}






