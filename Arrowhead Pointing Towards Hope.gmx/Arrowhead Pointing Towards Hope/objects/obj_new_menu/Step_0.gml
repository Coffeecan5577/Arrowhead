/// @desc Control Menu

//Item Easing in
menu_x += (menu_x_target - menu_x) / menu_speed;

//Keyboard controls
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
		menu_x_target = gui_width + 200;
		menu_committed = menu_cursor;
		//No screenshake.
		menu_control = false;
		audio_stop_sound(snd_title_music);
	}
}

if (menu_x > gui_width + 150) && (menu_committed != -1)
{
	switch (menu_committed)
	{
		case 2:
		{
			scr_slide_transition(TRANS_MODE.NEXT);
			break;
		}
		case 0:
		{
			scr_slide_transition(TRANS_MODE.EXIT);
			break;
		}
		default:
		{
			scr_slide_transition(TRANS_MODE.NEXT);	
		}	
	}
}