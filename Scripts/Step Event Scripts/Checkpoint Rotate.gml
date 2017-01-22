image_angle += 1; //Rotates object

  if (place_meeting(x,y,obj_player))
  {
    global.checkpoint = id; //assigns the current checkpoint an id
    global.checkpointx = x;
    global.checkpointy = y;
    global.checkpointR = room;
  }

//next check if current checkpoint is active and set frame to 1 to show active
  if (global.checkpointR == room)
  {
    if (global.checkpoint == id) //checking for specific active checkpoint
    {
      image_index = 1; //set sprite image to 1 to show active.
    }
    else
    {
      image_index = 0; //stay inactive
    }
  }
