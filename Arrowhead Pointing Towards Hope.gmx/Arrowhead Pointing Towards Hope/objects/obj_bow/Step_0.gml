//Change animation speed
image_speed = 0.65;

//If the launch script is called
if (scr_launch_prep)
{	
	//Create the power meter above the bow.
	instance_create_layer(x, y - 20, "lvl_objects", obj_power_meter);
}

	