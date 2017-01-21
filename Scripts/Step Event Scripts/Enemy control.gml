hsp = dir * movespeed;
vsp += grav;
chck_pxls_below = 8;

//Enemy collision
//Horizontal Collisions
  if (place_meeting(x + hsp, y, obj_wall)) //Check for collision before we move in that space
  {
    //If we are about to collide, slowly move up until the collision happens.
    while(!place_meeting(x + sign(hsp), y, obj_wall))
    {
      x += sign(hsp);
    }
    dir *= -1; //change direction if collided
  }

  //Vertical Collisions
    if (place_meeting(x, y + vsp, obj_wall)) //Check for collision before we move in that space
    {
      //If we are about to collide, slowly move up until the collision happens.
      while(!place_meeting(x, y + sign(vsp), obj_wall))
      {
        y += sign(vsp);
      }
      vsp = 0; //stop moving if we have collided

        if (fearofheights) && !position_meeting(x+(sprite_width/2) * dir, y+(sprite_height/2)+chck_pxls_below, obj_wall)
          {
            dir *= -1;
          }
    }

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

  x += hsp;
  y += vsp;
