global.num_of_hits -= 1;
audio_play_sound(snd_powerup, 0, false);
instance_destroy(); //get rid of object.

if (global.num_of_hits == 0 && place_meeting(obj_player.x, obj_player.y, obj_string))
{
    global.num_of_hits = 0;
}
    

