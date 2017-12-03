/// @desc initailize variables
paused = false;
screenshot = -1;



//TODO: 12/02/17 - 5:35 P.M. -- Modify pause menu and transistions to draw text to center of viewport screenshot, and reduce the alpha of the screenshot to 0.5
gui_width = display_get_gui_width();
gui_height = display_get_gui_height();
gui_margin = 72;


menu_font = fnt_menu;
menu_itemheight = font_get_size(fnt_menu);
menu_committed = -1;
menu_control = true; //Do we have control of the menu?

menu[2] = "Resume Game"; //It is more efficient in GMS 2 to start an array at the largest index.
menu[1] = "Restart Level";
menu[0] = "Back to Title";

menu_items = array_length_1d(menu);
menu_cursor = 2; //option selected by default on menu