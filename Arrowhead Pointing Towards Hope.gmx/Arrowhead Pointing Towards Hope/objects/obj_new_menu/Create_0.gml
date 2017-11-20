/// @desc GUI variable menu setup

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();
gui_margin = 72;

menu_x = gui_width + 200; //x position of menu
menu_y = gui_height - gui_margin;
menu_x_target = gui_width - gui_margin;
menu_speed = 25; //lower is faster
menu_font = fnt_menu;
menu_itemheight = font_get_size(fnt_menu);
menu_committed = -1;
menu_control = true; //Do we have control of the menu?

menu[2] = "New Game"; //It is more efficient in GMS 2 to start an array at the largest index.
menu[1] = "Continue";
menu[0] = "Exit Game";

menu_items = array_length_1d(menu);
menu_cursor = 2; //option selected by default on menu