/// @description initialize variables
velocity_ = [0, 0];

//jump variables
grav_ = 0.4; //gravity and max gravity subject to change later
grav_max_ = 10;
num_of_jumps_ = 1; //number of jumps for the player.

//local variables for the horizontal and vertical speeds.
jump_speed_ = 10;
max_velocity_ = [8, 32];
acceleration_ = 2.1;
dir = 1; //facing right by default. This helps determine sprite animations.

//Get tile_map_id
var layer_id = layer_get_id("world_1_tiles");
collision_tile_map_id_ = layer_tilemap_get_id(layer_id);

//Gamepad button names
gpad_A = gp_face1;
gpad_B = gp_face2;
gpad_X = gp_face3;
gpad_y = gp_face4;
