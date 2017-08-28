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
}

y += vsp;

if (place_meeting(x, y + 1, obj_ground_parent)) && (key_jump)
{
	vsp -= 10;
}


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






