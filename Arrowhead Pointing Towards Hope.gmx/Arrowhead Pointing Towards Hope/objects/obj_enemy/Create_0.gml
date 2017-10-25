/// Initialize variables for enemy

velocity_ = [0, 0];

//jump variables
grav_ = 0.3; //gravity and max gravity subject to change later Original value is 0.4
grav_max_ = 4; //original value was 10

//local variables for the horizontal and vertical speeds.
max_velocity_ = [6, 0];
acceleration_ = 2.1;
dir = 1; //facing right by default. This helps determine sprite animations.


//Get tile_map_id
var layer_id = layer_get_id("world_1_tiles");
collision_tile_map_id_ = layer_tilemap_get_id(layer_id);


