switch (mpos) //making a switch for menu position
{
  case 0:
  {
    room_goto_next();
    break;
  }
  case 1:
  {
    break;
  }
  case 2:
  {
    break;
  }
  case 3:
  {
    game_end(); //exit game
    break;
  }
  default:
  {
    break; //do nothing. Same for other cases at the moment.
  }


}
