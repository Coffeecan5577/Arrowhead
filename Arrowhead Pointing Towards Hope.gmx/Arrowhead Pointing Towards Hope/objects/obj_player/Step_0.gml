/// @description Get Player's Input:
//Gamepad button names
gpad_A = gp_face1;
gpad_B = gp_face2;
gpad_X = gp_face3;
gpad_y = gp_face4;
gpad_RT = gp_shoulderr;

//Assigning variables to player movement.
var x_input = (keyboard_check(vk_right) - keyboard_check(vk_left)) * acceleration_;

//Vector variables
var vector2_x = 0;
var vector2_y = 1;

//Horizontal movement:
velocity_[vector2_x] = clamp(velocity_[vector2_x] + x_input, -max_velocity_[vector2_x], max_velocity_[vector2_x]); 

//Determining Direction:
if (keyboard_check(vk_right)) && !(keyboard_check(vk_left))
{
	dir = 1; //facing right
}

if (keyboard_check(vk_left)) && !(keyboard_check(vk_right))
{
	dir = -1; //Facing left
}

//If both keys are pressed, don't move at all;
if (keyboard_check(vk_left)) && (keyboard_check(vk_right))
{
	acceleration_ = 0;
	velocity_[vector2_x] = 0;
}


//Applying friction

if (x_input == 0)
{
	velocity_[vector2_x] = lerp(velocity_[vector2_x], 0, .20); //Applies 20% friction to object until we reach 0
}


//Gravity
velocity_[vector2_y] += grav_;

//Move and contact tiles
move_and_contact_tiles(collision_tile_map_id_, 32, velocity_);

//Jumping
var on_ground =  tile_collide_at_points(collision_tile_map_id_, [bbox_left, bbox_bottom], [bbox_right - 1, bbox_bottom]);
if (on_ground)
{
	if (keyboard_check_pressed(vk_space))
	{
		velocity_[vector2_y] = -jump_speed_;
		num_of_jumps_ -= 1;
	}
	else // Control jump height
	{
		if (keyboard_check_released(vk_space)) && velocity_[vector2_y] <= -(jump_speed_ / 3)
		{
			velocity_[vector2_y] = -(jump_speed_ / 3);
		}
	}
}

// Controlling number of jumps
if (num_of_jumps_ == 0) && (keyboard_check_pressed(vk_space))
{
	//Do nothing.
}


/* 
Double jumps are a possibility later on.
sprite animation section:
First we need a way to determine which way Arrowhead is facing through the move variable.

Changing sprites based on movement.

Idle animations
*/


if (on_ground && x_input == 0 && dir == 1)
{
	sprite_index = spr_player_idle_right;
	image_speed = 0.9; //This is a multiplier in GMS2
}

if (on_ground && x_input == 0 && dir == -1)
{
	sprite_index = spr_player_idle_left;
	image_speed = 0.9;
}

// If we are not pressing anything, but still moving, activate idle animation for that direction.
if (on_ground && velocity_[vector2_x] > 0 && x_input == 0 && dir == 1)
{
	sprite_index = spr_player_idle_right;
	image_speed = 0.9;
}

if (on_ground && velocity_[vector2_x] < 0 && x_input == 0 && dir == -1)
{
	sprite_index = spr_player_idle_right;
	image_speed = 0.9;
}

//TODO: Debug this code as well.




//Now for the running animations.
if (on_ground && velocity_[vector2_x] > 0)
{
	sprite_index = spr_player_run_right;
	image_speed = 0.9;
}
else if (on_ground && velocity_[vector2_x] < 0)
{
	sprite_index = spr_player_run_left;
	image_speed = 0.9;
}

//Jumping animations

if (!on_ground && velocity_[vector2_y] < 0 && dir == 1) //If in the air and facing right.
{
	//Play sprite animation and set speed.
	sprite_index = spr_player_jump_right;
	image_speed = 0.8;
	if (image_index == 7)
	{
		image_speed = 0;
	}
}
	
else if (!on_ground && velocity_[vector2_y] < 0 && dir == -1) //same thing but facing left.
{
	sprite_index = spr_player_jump_left;
	image_speed = 0.8;
	if (image_index == 7)
	{
		image_speed = 0;
	}
		
}

//TODO: Debug jumping animations 10/04/17


//Falling Animations:

if (!on_ground && velocity_[vector2_y] > 0 && dir == 1)
{
	sprite_index = spr_player_fall_right;
	image_speed = 0.7;
	if (image_index == 2)
	{
		image_speed = 0;
	}
}

else if (!on_ground && velocity_[vector2_y] > 0 && dir == -1)
{
	sprite_index = spr_player_fall_left;
	image_speed = 0.7;
	if (image_index == 2)
	{
		image_speed = 0; //Stop animation if we have finished it.
	}
}

//Idle animation on sliding to a stop
if (on_ground && dir == 1 && velocity_[vector2_x] > 0 && x_input == 0)
{
	sprite_index = spr_player_idle_right;
	image_speed = 0.9;
}

if (on_ground && dir == -1 && velocity_[vector2_x] < 0 && x_input == 0)
{
	sprite_index = spr_player_idle_left;
	image_speed = 0.9;
}


/* Launching mechanic piece
if Arrowhead is within 10 pixels on either side of a bow, and RT or shift is pressed, call a script.
*/

//1. Change the sprite, and move the player to the center of the bow sprite
//2. Change launch prep sprite based on bow direction. We will need a global variable.
if (place_meeting(x, y, obj_bow) && keyboard_check(vk_lshift))
{
	with(other)
	{
		if (image_xscale == 1)
		{
			x = obj_bow.x - 5;
			y = obj_bow.y + 1;
			sprite_index = spr_arrow_aim_right;
			image_speed = 0;
			velocity_[vector2_x] = 0;
			velocity_[vector2_y]= 0;
		}
		else if (image_xscale == -1)
		{
			x = obj_bow.x + 5;
			y = obj_bow.y + 1;
			sprite_index = spr_arrow_aim_left;
			image_speed = 0;
			velocity_[vector2_x] = 0;
			velocity_[vector2_y]= 0;
		}
	}
}

/*
else if (place_meeting(x, y, obj_bow) && keyboard_check(vk_lshift) && (other).bow_pos == -1)
{
	x = obj_bow.x + 5;
	y = obj_bow.y + 1;
	sprite_index = spr_arrow_aim_left;
	image_speed = 0;
	velocity_[vector2_x] = 0;
	velocity_[vector2_y]= 0;
}
*/

if (sprite_index == spr_arrow_aim_left || sprite_index == spr_arrow_aim_right)
{
	global.launch_prep = 1;
}
else
{
	global.launch_prep = 0;
}



//We want all of the sprites to change based on the value of the power meter.
//Since that is a global variable, that should be relatively easy to do.
//Don't know if it would be easier to have an object manage all 3 sprites, or to just do each one individually based on the power value.

///IMPORTANT: 10/23/17 -- So far, Arrowhead's part is ok. Now onto the power meter.

//Changing sprites based on power meter value
if (instance_exists(obj_power_meter))
{
	if (sprite_index == spr_arrow_aim_right || sprite_index == spr_arrow_aim_left)
	{
		if (global.launch_power == 1.10)
		{
			image_index = 0;
		}
		else if (global.launch_power > 1.10 && global.launch_power <= 1.20)
		{
			image_index = 1;
		}
		else if (global.launch_power >= 1.20 && global.launch_power <= 1.35)
		{
			image_index = 2; 
		}
		else if (global.launch_power >= 1.35 && global.launch_power <= 1.50)
		{
			image_index = 3;
		}
	}
}




