switch (mpos) //making a switch for menu position
{
  case 0:
  {
    room_goto_next();
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

