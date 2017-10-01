///@param tile_map_id
///@param point_arrays
var tile_map_id = argument[0];

//Found variable
var found = false; //have not found any tiles yet.

//variable for point arrays:
var vector2_x = 0;
var vector2_y = 1;

// Loop through the points and check for a tile
for (var i = 1; i < argument_count; i++)
{
	var point = argument[i]; //gets the current point we're at
	found = found || tilemap_get_at_pixel(tile_map_id, point[vector2_x], point[vector2_y]);
}

//Return found
return found;