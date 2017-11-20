/// @desc scr_slide_transition(mode, targetroom);
/// @arg Mode sets transition mode betwen next, restart, and goto.
/// @arg target sets target room when using the goto mode.

with (obj_transition) //affecting transition object
{
	mode = argument[0]; //first argument in script.
	if (argument_count > 1) //returns number of arguments or parameters.
	{
		target = argument[1];
	}
}