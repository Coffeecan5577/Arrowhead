//Vector variables
var vector2_x = 0;
var vector2_y = 1;

//Horizontal movement:
velocity_[vector2_x] = clamp(velocity_[vector2_x] * acceleration_, -max_velocity_[vector2_x], max_velocity_[vector2_x]); 

if (tile_collide_at_points(collision_tile_map_id_, [bbox_right - 1, bbox_bottom]) && dir == 1 && velocity_[vector2_x] == 0)
{
	//Switch directions.
	alarm[0] = room_speed * choose(1.5, 3.6); //Set a random time to switch directions.
}
else if (tile_collide_at_points(collision_tile_map_id_, [bbox_left + 1, bbox_bottom]) && dir == -1 && velocity_[vector2_x] == 0)
{
	//Switch again.
	alarm[0] = room_speed * choose(1.5, 3.6); //Set a random time to switch directions.
}


//Gravity
velocity_[vector2_y] += grav_;

//Move and contact tiles
move_and_contact_tiles(collision_tile_map_id_, 32, velocity_);

//Detecting when we are on ground.
var on_ground =  tile_collide_at_points(collision_tile_map_id_, [bbox_left, bbox_bottom], [bbox_right - 1, bbox_bottom]);

//if we have collided with the player from the bottom
if (place_meeting(x, sign(y + 1), obj_player))
{
	// 1. set x velocity to 0;
	// 2. change sprite.
	// 3. on animation end, destroy the sprite.
	velocity_[vector2_x] = 0;
	//sprite_index = spr_enemy_damage
	/*if (floor(image_index == image_number - 1))
	{
		sprite_index == spr_destroy;
		image_speed = 0;
	}
	*/
	instance_destroy();
}