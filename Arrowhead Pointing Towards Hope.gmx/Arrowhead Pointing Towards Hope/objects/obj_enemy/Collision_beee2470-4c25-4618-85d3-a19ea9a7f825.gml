audio_play_sound(snd_enemy_death, 0, false);
enemy_hp = 0;
instance_change(obj_enemy_dup, false);
with(obj_enemy_dup)
{
    sprite_index = spr_enemy_death;
    image_speed = 1;
}


