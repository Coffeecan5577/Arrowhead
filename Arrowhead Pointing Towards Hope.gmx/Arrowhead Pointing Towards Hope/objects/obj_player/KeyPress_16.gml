//Create the power meter object above the bow.
if (sprite_index == spr_arrow_aim_right || sprite_index == spr_arrow_aim_left)
{
	instance_create_layer(obj_player.x, obj_player.y - 45, "lvl_objects", obj_power_meter);
}

if (instance_exists(obj_power_meter))
{
	//Don't create any more.
}
