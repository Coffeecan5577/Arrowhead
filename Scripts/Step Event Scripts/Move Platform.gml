if (global.pause)
{
 exit; //exits out of the current event
}

mask_index = spr_moveplatform; //Assign mask to object after creation
hsp = dir * movespeed;

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
  x += hsp;

    if (instance_exists(obj_player))
  {
    if (round(obj_player.y + (obj_player.sprite_height / 2)) > y) || (obj_player.key_down)  //checking whether or not the player is above the platform. round converts the real value to an int. Also checking if down key is pressed.
    {
      mask_index = -1;
    }
    else
    {
      mask_index = spr_platform;
      if place_meeting(x, y - 1, obj_player)
      {
        obj_player.hsp_carry = hsp;
      }
    }
  }
