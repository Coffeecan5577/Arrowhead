global.num_of_hits += 1;
instance_change(obj_enemy_dup, false);
audio_play_sound(snd_enemy_death, 0, false);
sprite_index = spr_enemy_death;
with (obj_enemy_dup)
{
    image_speed = 1;
}

