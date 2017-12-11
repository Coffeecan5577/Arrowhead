//Vector variables
var vector2_x = 0;
var vector2_y = 1;

//Detecting tile collision from the top bounding box
var tile_collide_from_top = tile_collide_at_points(collision_tile_map_id_, [bbox_top]);

//Horizontal movement:
velocity_[vector2_x] = clamp(velocity_[vector2_x] + (acceleration_ * dir), -max_velocity_[vector2_x] - 1, max_velocity_[vector2_x]); 

#region Tile Collision handling

//If we collide with another tile and our velocity is != 0
if (tile_collide_from_top && velocity_[vector2_x] != 0)
{
	//1. Set alarm to switch directions.
	//2. Set velocity to 0
	alarm[0] = (room_speed * choose(1.5, 2.1)); //Set a random time to switch directions.
	velocity_[vector2_x] = 0;
}
#endregion

//Gravity
velocity_[vector2_y] += grav_;

//Move and contact tiles
move_and_contact_tiles(collision_tile_map_id_, 32, velocity_);
