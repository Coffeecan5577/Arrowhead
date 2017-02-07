var move = 0;
move -= max(keyboard_check_pressed(vk_up), keyboard_check_pressed(ord("W")), 0); //takes the largest value out of the ones it's given
move += max(keyboard_check_pressed(vk_down), keyboard_check_pressed(ord("S")), 0);

var move_gamepad = 0; //variable for controller input.
move_gamepad -= gamepad_button_check_pressed(0, gp_padu);
move_gamepad += gamepad_button_check_pressed(0, gp_padd);

  if (move != 0)
  {
    mpos += move; //Add to the menu position
    if (mpos < 0)
    {
      mpos = array_length_1d(menu) - 1; //length returns the number of items in a single dimensional array. No sixth index in array.
    }
    if (mpos > array_length_1d(menu) - 1)
    {
      mpos = 0; //move menu position back to 0
    }
  }

   //Controller menu navigation fully functional 2/07/2017
  //Same statement with d-pad input
  if (move_gamepad != 0)
  {
    mpos += move_gamepad;

    if (mpos < 0)
    {
        mpos = array_length_1d(menu) - 1; //length returns the number of items in a single dimensional array. No sixth index in array.
    }

    if (mpos > array_length_1d(menu) - 1)
    {
        mpos = 0; //move menu position back to 0
    }

  }


var push; //allows for multiple inputs that do the same thing.
push = max(keyboard_check_released(vk_enter), keyboard_check_released(vk_shift), keyboard_check_released(vk_space), 0) || gamepad_button_check_pressed(0, gp_face1); //returns biggest value
  if (push == 1)
  {
    scr_menu(); // Call a script
  }
