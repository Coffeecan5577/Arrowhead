if (global.pause)
{
 exit; //exits out of the current event
}

//Get Player's Input:
key_right = keyboard_check(vk_right) || (gamepad_axis_value(0, gp_axislh) > 0); //Check for right key input: returns a 1 if pressed. Same applies to right side of analog stick on controller
key_left = -(keyboard_check(vk_left) || (gamepad_axis_value(0, gp_axislh) < 0)); //returns a negative value for the opposite direction
key_jump = keyboard_check_pressed(vk_space) || (gamepad_button_check_pressed(0, gp_face1)); //Check if space is pressed
key_jump_held = keyboard_check(vk_space) || gamepad_button_check(0, gp_face1);
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
       jumps = max_jumps; //set our number of jumps to 2
    }

    if (key_jump) && (jumps > 0)
    {
      jumps -= 1;
      vsp =- jumpspeed;
    }

    if (key_jump) && (place_meeting(x + 1, y, obj_wall) || place_meeting(x - 1, y, obj_wall))
      {
        vsp = -jumpspeed;
      }

    if (vsp < 0) && (!key_jump_held)
    {
      vsp = max(vsp, -jumpspeed / 4);
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

//Animation and drawing sprites based on movement:

if (move != 0)
  {
    image_xscale = move; //set the horizontal scale of our sprite to our current direction.
  }
  if (place_meeting(x, y + 1, obj_wall)) //checking for floor
  {
    if (move != 0) sprite_index = spr_player_run; else sprite_index = spr_player_idle;
  }
  else
  {
   if (vsp < 0) sprite_index = spr_player_jump; else sprite_index = spr_player_fall; //checking if our jump speed is increasing
  }
