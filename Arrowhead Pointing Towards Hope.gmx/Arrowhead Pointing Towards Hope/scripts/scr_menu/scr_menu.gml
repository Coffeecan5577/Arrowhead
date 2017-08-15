switch (global.mpos) //making a switch for menu position
{
  case 0:
  {
    instance_create(0, 0, obj_level_fade);
    break;
  }
  case 1:
  {
    game_end();
    break;
  }
  default:
  {
    break; //do nothing. Same for other cases at the moment.
  }
}

