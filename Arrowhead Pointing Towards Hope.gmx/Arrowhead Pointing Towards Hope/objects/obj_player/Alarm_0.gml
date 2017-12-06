/// @desc Resetting the level

#region Laying out steps for timer
/* 
1. Play death jingle once created
2. Restart current level once sound is finished.
*/
#endregion

//audio_play_sound(snd_death_jingle, 1, false);
if (audio_is_playing(snd_death_jingle))
{
	//Do nothing
}
else
{
	scr_slide_transition(TRANS_MODE.RESTART); //Restart the current level.
}