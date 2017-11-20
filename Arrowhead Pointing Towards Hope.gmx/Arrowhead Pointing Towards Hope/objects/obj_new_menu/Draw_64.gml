/// @desc Draw Menu
draw_set_font(fnt_menu);
draw_set_halign(fa_middle);
draw_set_valign(fa_top); //Draw the text to the top middle of the screen

for (var i = 0; i < menu_items; i++)
{
	var offset = 2;
	var txt = menu[i]; //stores our menu array
	if (menu_cursor == i)
	{
		txt = string_insert("> ", txt, 0); //Add the character at beginning of txt string.
		var col = c_white; //Set color
	}
	else
	{
		var col = c_gray;
	}
	//menu positioning
	var xx = menu_x;
	var yy = menu_y - (menu_itemheight * (i * 1.5));
	draw_set_color(c_black);
	draw_text(xx - offset, yy, txt);
	draw_text(xx + offset, yy, txt);
	draw_text(xx, yy + offset, txt);
	draw_text(xx, yy - offset, txt);
	draw_set_color(col);
	draw_text(xx, yy, txt);
}