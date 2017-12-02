/// @desc Setup pausing
if (keyboard_check_pressed(vk_escape))
{
	paused = !paused;
	if (!sprite_exists(screenshot))
	{
		screenshot = sprite_create_from_surface(application_surface, 0, 0, view_wport, view_hport, 0, 0, 0, 0);
	}
}

if (paused)
{
	instance_deactivate_all(1);
}
else
{
	if (sprite_exists(screenshot))
	{
		sprite_delete(screenshot);
	}
	instance_activate_all();
}

