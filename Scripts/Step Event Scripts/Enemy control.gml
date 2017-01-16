hsp = dir * movespeed;
vsp += grav;

//Enemy collision
  if(place_meeting(x,y,obj_player))
  {
    if (obj_player.y < y - 16) //are we colliding with the player from the top.
    {
      with (obj_player) vsp = -jumpspeed; //bounce off the enemy
      instance_destroy(); //kill the object
    }
    else
    {
      game_restart();
    }
  }
