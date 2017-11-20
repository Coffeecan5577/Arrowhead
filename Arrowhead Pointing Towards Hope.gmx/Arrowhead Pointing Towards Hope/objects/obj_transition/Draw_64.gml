/// @desc Draw Black Bars
//Draws on the screen without worrying about what the camera sees.

if (mode != TRANS_MODE.OFF)
{
	draw_set_color(c_black);
	draw_rectangle(0, 0, w, percent * h_half, false); //draw rectangle from the top of the screen.
	draw_rectangle(0, h, w, h - (percent * h_half), false); //Draw rectangle from the bottom of the screen.
}

draw_set_color(c_white);
draw_text(50, 50, string(percent));