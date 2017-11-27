/// @desc Move to next room.
with (obj_player)
{
	if (has_control)
	{
		has_control = false;
		scr_slide_transition(TRANS_MODE.GOTO, other.target); //Change the target from the player to the transition object.
	}
}