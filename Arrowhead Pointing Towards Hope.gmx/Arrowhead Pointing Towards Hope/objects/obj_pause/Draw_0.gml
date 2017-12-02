/// @desc Draw screenshot

draw_set_font(fnt_menu);

if (paused)
{
	draw_sprite_ext(screenshot, view_wview, view_hview, 0, 0.5, 0.5, 0, c_white, .50);
}