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
	//Menu option preparation
	if (menu_control)
	{
		if (keyboard_check_pressed(vk_up))
		{
			menu_cursor++;
			if (menu_cursor >= menu_items)
			{
				menu_cursor = 0;
			}
		}
		if (keyboard_check_pressed(vk_down))
		{
			menu_cursor--;
			if (menu_cursor < 0)
			{
				menu_cursor = menu_items - 1;
			}
		}
	
		if (keyboard_check_pressed(vk_enter))
		{
			menu_committed = menu_cursor;
			menu_control = false;
		}
	}
	
	if (menu_committed != -1)
	{
		switch (menu_committed)
		{
			case 2: 
			{
				paused = !paused;
				break;
			}
			case 1:
			{
				scr_slide_transition(TRANS_MODE.RESTART); // Restart current level.
				break;
			}
			case 0:
			{
				scr_slide_transition(TRANS_MODE.GOTO, rm_title);
				break;
			}
			default:
			{
				//Do nothing for right now.
				break;
			}
		}
	}
}

else
{
	if (sprite_exists(screenshot))
	{
		sprite_delete(screenshot);
	}
	instance_activate_all();
	menu_control = false;
}




