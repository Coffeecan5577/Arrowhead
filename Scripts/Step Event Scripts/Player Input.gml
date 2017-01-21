///Get Player's Input:
key_right = keyboard_check(vk_right); //Check for right key input:
key_left = -keyboard_check(vk_left); //returns a negative value for the opposite direction
key_jump = keyboard_check_pressed(vk_space); //Check if space is pressed

//React to inputs:
move = key_left + key_right;
hsp = move * movespeed; //movespeed was 4
  if (vsp < 10)
  {
    vsp += grav; //gravity was 0.2
  }

  if (place_meeting(x, y + 1, obj_wall)) //Checking one pixel below our sprite
  {
    vsp = key_jump * -jumpspeed; //Negative jump speed is upwards. Positive values are down.
  }

//Horizontal Collisions
  if (place_meeting(x + hsp, y, obj_wall)) //Check for collision before we move in that space
  {
    //If we are about to collide, slowly move up until the collision happens.
    while(!place_meeting(x + sign(hsp), y, obj_wall))
    {
      x += sign(hsp);
    }
    hsp = 0; //stop moving if we have collided
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
    }

y += vsp;
x += hsp; //applying the speed to the object's coordinates
