move_left = keyboard_check_pressed(vk_left);
move_right = keyboard_check_pressed(vk_right);
move_gamepad_left = gamepad_button_check_pressed(0, gp_padl);
move_gamepad_right = gamepad_button_check_pressed(0, gp_padr);
key_start = keyboard_check_pressed(vk_enter) || gamepad_button_check_pressed(0, gp_face1);
//Checking for button or key presses:
//This one will have pause_mpos be 0, 1 or 2
if ((move_right || move_gamepad_right) && global.pause_mpos == 0)
{
    action_move_to(608, 448);
    audio_play_sound(snd_option_select, 0, false);
    global.pause_mpos += 1;
}
else if ((move_right || move_gamepad_right) && global.pause_mpos == 1)
{
    action_move_to(928, 448);
    audio_play_sound(snd_option_select, 0, false);
    global.pause_mpos += 1;
}

else if ((move_left || move_gamepad_left) && global.pause_mpos == 2)
{
    action_move_to(608, 448);
    audio_play_sound(snd_option_select, 0, false);
    global.pause_mpos -= 1;
}
else if ((move_left || move_gamepad_left) && global.pause_mpos == 1)
{
    action_move_to(288, 448);
    audio_play_sound(snd_option_select, 0, false);
    global.pause_mpos -= 1;
}
else if ((move_left || move_gamepad_left) && global.pause_mpos == 0)
{
    action_move_to(928, 448);
    audio_play_sound(snd_option_select, 0, false);
    global.pause_mpos = 2;
}
else if ((move_left || move_gamepad_left) && global.pause_mpos == 2)
{
    action_move_to(288, 448);
    audio_play_sound(snd_option_select, 0, false);
    global.pause_mpos = 0;
}

if (key_start)
{
    scr_pause_menu(); //call the menu script.
    audio_stop_sound(snd_pause_menu);
    audio_play_sound(snd_game_start, 0, false);
}



