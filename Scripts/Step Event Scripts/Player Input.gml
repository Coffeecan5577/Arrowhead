///Get Player's Input:
key_right = keyboard_check(vk_right); //Check for right key input:
key_left = -keyboard_check(vk_left); //returns a negative value for the opposite direction
key_jump = keyboard_check_pressed(vk_space); //Check if space is pressed
key_down = keyboard_check(vk_down);

//React to inputs:
move = key_left + key_right;
hsp = move * movespeed; //movespeed was 4
  if (vsp < 10)
  {
    vsp += grav; //gravity was 0.2
  }

  if (place_meeting(x, y + 1, obj_wall)) //Checking one pixel below our sprite
  {
     if (key_jump)
     {
        vsp = -jumpspeed; //Negative jump speed is upwards. Positive values are down.
     }
  }

var hsp_final = hsp + hsp_carry;
hsp_carry = 0;

//Horizontal Collisions
  if (place_meeting(x + hsp_final, y, obj_wall)) //Check for collision before we move in that space
  {
    //If we are about to collide, slowly move up until the collision happens.
    while(!place_meeting(x + sign(hsp_final), y, obj_wall))
    {
      x += sign(hsp_final);
    }
    hsp_final = 0; //stop moving if we have collided
    hsp = 0;
  }
  x += hsp_final;

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
