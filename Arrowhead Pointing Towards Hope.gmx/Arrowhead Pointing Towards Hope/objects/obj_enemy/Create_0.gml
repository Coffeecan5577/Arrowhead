/// @description initialize variables
velocity_ = [0, 0];

grav_ = 0.3; //gravity and max gravity subject to change later Original value is 0.4
grav_max_ = 4; //original value was 10

//local variables for the horizontal and vertical speeds.
max_velocity_ = [choose(5, 9), 32]; //Randomly sets a horizontal speed for each enemy created.
acceleration_ = choose(.70, 1.15);
dir = 1; //facing right by default. This helps determine sprite animations.


//Get tile_map_id
var layer_id = layer_get_id("world_1_tiles");
collision_tile_map_id_ = layer_tilemap_get_id(layer_id);


