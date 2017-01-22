  if (global.checkpointR != 0) //If we have an active checkpoint in a room
  {
    room_goto(global.checkpointR); //go to that room
  }
  else
  {
    room_restart(); //self explanatory
  }

