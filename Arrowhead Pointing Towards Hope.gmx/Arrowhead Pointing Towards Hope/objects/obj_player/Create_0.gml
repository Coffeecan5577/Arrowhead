/// @description initialize variables
velocity_ = [0, 0];

//jump variables
grav_ = 0.3; //gravity and max gravity subject to change later Original value is 0.4
grav_max_ = 4; //original value was 10
num_of_jumps_ = 1; //number of jumps for the player.

//local variables for the horizontal and vertical speeds.
jump_speed_ = 10;
max_velocity_ = [5, 32];
acceleration_ = 2.1;
dir = 1; //facing right by default. This helps determine sprite animations.
global.arrow_launch = 0; //Boolean used to determine whether we are launching or using diving attack.

//X and Y position variables.
xpos = obj_player.x;
ypos = obj_player.y;

//Get tile_map_id
var layer_id = layer_get_id("world_1_tiles");
collision_tile_map_id_ = layer_tilemap_get_id(layer_id);


