/// @desc Size variables and mode setup.

w = display_get_gui_width(); //width
h = display_get_gui_height(); //height
h_half = h * .5; //getting the middle of the screen.
enum TRANS_MODE
{
	OFF,
	NEXT,
	GOTO,
	RESTART,
	INTRO
}
percent = 1; //value between 0 and 1 that determines how filled the screen is.
target = room; //Holds the room we are jumping to.