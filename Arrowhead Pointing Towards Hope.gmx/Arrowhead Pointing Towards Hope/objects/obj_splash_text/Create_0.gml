/// @desc Initalize stuff for splash text
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
menu_control = false; //Do we have control of the menu?

menu[0] = "Ground Up Games";
menu_items = array_length_1d(menu);