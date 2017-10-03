/// @description Get Player's Input:
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
//Double jumps are a possibility later on.


//sprite animation section:
//First we need a way to determine which way Arrowhead is facing through the move variable.
//Idle animations
*/

// Changing sprites based on movement.
/*
if (dir == 1 && velocity_[vector2_x] == 0)
{
	sprite_index = spr_player_idle_right;
	image_speed = 0.5; //This is a multiplier in GMS2
}

else if (dir == -1 && velocity_[vector2_x] == 0)
{
	sprite_index = spr_player_idle_left;
	image_speed = 0.5;
}

*/

//Now for the running animations.
if (velocity_[vector2_x] > 0)
{
	sprite_index = spr_player_run_right;
	image_speed = 0.6;
}
else if (velocity_[vector2_x] < 0)
{
	sprite_index = spr_player_run_left;
	image_speed = 0.6;
}

//Jumping animations
if (jump_speed_ < 0 && dir == 1) //If in the air and facing right.
{
	//Play sprite animation and set speed.
	sprite_index = spr_player_jump_right;
	image_speed = 0.4;
}
	
else if (jump_speed_ < 0 && dir == -1) //same thing but facing left.
{
	sprite_index = spr_player_jump_left;
	image_speed = 0.4;
}

//Falling Animations:
/*
if (jump_speed_ > 0 && dir == 1)
{
	sprite_index = spr_player_fall_right;
	image_speed = 1;
	if (image_index == 2)
	{
		image_speed = 0;
	}
}

else if (jump_speed_ > 0 && dir == -1)
{
	sprite_index = spr_player_fall_left;
	image_speed = 1;
	if (image_index == 2)
	{
		image_speed = 0; //Stop animation if we have finished it.
	}
}
*/





