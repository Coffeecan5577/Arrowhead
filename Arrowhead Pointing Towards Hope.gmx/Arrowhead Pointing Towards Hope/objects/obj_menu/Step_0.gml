move_left = keyboard_check_pressed(vk_left);
move_right = keyboard_check_pressed(vk_right);
move_gamepad_left = gamepad_button_check_pressed(0, gp_padl);
move_gamepad_right = gamepad_button_check_pressed(0, gp_padr);
global.key_start = keyboard_check_pressed(vk_enter) || gamepad_button_check_pressed(0, gp_face1);
//Checking for button or key presses:
if ((move_left || move_right || move_gamepad_right || move_gamepad_left) && global.mpos == 0)
{
    action_move_to(832, 416);
    global.mpos += 1; //this increments it first, so the options are backwards
    audio_play_sound(snd_option_select, 0, false);
}

else if ((move_left || move_right || move_gamepad_right || move_gamepad_left) && global.mpos == 1)
{
    action_move_to(320, 416);
    global.mpos -= 1;
    audio_play_sound(snd_option_select, 0, false);
}

if (global.key_start)
{
    scr_menu(); //call the menu script.
    audio_stop_sound(snd_bg_menu);
    audio_play_sound(snd_game_start, 0, false);
}



