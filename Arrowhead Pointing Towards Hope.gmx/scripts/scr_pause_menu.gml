switch (global.pause_mpos) //making a switch for menu position
{
  case 0:
  {
    room_goto(rm_0);
    break;
  }
  case 1:
  {
    room_set_persistent(rm_0, false);
    instance_create(0, 0, obj_return_main_menu);
    break;
  }
  case 2:
  {
    game_end();
    break;
  }
  default:
  {
    break; //do nothing
  }
}


