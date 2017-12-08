/// @desc Move to next room.
with (other)
{
	scr_slide_transition(TRANS_MODE.GOTO, other.target); //Change the target from the player to the transition object.
}
audio_stop_sound(snd_lvl_msc);


