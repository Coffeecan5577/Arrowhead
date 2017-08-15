with(obj_arrowtip)
{
    audio_stop_sound(snd_bg_level);
    audio_play_sound(snd_arrowtip_collect, 0, false);
    instance_destroy();
}
player_input = false;

alarm[1] = 60;

