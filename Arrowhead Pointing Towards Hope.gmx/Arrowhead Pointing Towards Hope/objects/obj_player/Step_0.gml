/// @description Get Player's Input:

///Player Movement (Keyboard)
if (keyboard_check(ord("D")) && !keyboard_check(ord("A")))
{
	hspeed += accel_spd;
	hspeed = min(hspeed, max_spd);
}

if (hspeed > 0) && !(keyboard_check(ord("D")))
{
	hspeed -= decel_spd;
}

if (keyboard_check(ord("A"))) && !(keyboard_check(ord("D")))
{
	hspeed -= accel_spd;
	hspeed = max(hspeed, -max_spd);
}

if (hspeed < 0) && !(keyboard_check(ord("A")))
{
	hspeed += decel_spd;
}

if ((keyboard_check(ord("A"))) && (keyboard_check(ord("D"))) || !(keyboard_check(ord("A"))) && !(keyboard_check(ord("D"))))
{
	hspeed = 0;
}

//Controller joystick movement

if (gamepad_axis_value(0, gp_axislh) > 0.2) || (gamepad_axis_value(0, gp_axislh) < (-0.2)) //finish up later
{

}



/*
global.key_launch_prep = keyboard_check(vk_shift) || gamepad_button_check(0, gp_shoulderrb);
key_down = keyboard_check(vk_down);
gamepad_start = keyboard_check_pressed(vk_escape) || gamepad_button_check_pressed(0, gp_start);
if (gamepad_start)
{
    global.pause = 1;
    room_goto(rm_pause_room);
    exit;
}
else if (gamepad_start && global.pause == 1)
{
    global.pause = 0;
    room_goto(rm_0);
}

Pause menu and launch prep inputs. Don't need these yet.
*/ 

//React to inputs:
move = key_left + key_right;
hsp = move * movespeed; //movespeed was 2
if (key_right)
{
    dir = 1;
}
else if (key_left)
{
    dir = -1;
}

  if (vsp < 10)
  {
    vsp += grav; //gravity was 0.2
  }

  if (place_meeting(x, y + 1, obj_ground_top_mid)) //Checking one pixel below our sprite
    {
       jumps = max_jumps; //set our number of jumps to 2
    }

    if (key_jump) && (jumps > 0)
    {
      jumps -= 1;
      vsp =- jumpspeed;
      audio_play_sound(snd_jump, 0, false);
    }

    if (key_jump) && (place_meeting(x + 1, y, obj_ground_top_mid) || place_meeting(x - 1, y, obj_ground_top_mid))
      {
        vsp = -jumpspeed;
      }

    if (vsp < 0) && (!key_jump_held)
    {
      vsp = max(vsp, -jumpspeed / 4);
    }
    if (vsp > 0 && jumps > 0)
    {
        jumps = 0; //if we fall off a ledge and have not jumped, do not let the player jump.
    }

//Horizontal Collisions
  if (place_meeting(x + hsp, y, obj_ground_top_mid)) //Check for collision before we move in that space
  {
    //If we are about to collide, slowly move up until the collision happens.
    while(!place_meeting(x + sign(hsp) , y, obj_ground_top_mid))
    {
      x += sign(hsp);
    }
    hsp = 0;
  }
  x += hsp;
  

  //Vertical Collisions
    if (place_meeting(x, y + vsp, obj_ground_top_mid)) //Check for collision before we move in that space
  {
    //If we are about to collide, slowly move up until the collision happens.
    while(!place_meeting(x, y + sign(vsp), obj_ground_top_mid))
    {
      y += sign(vsp);
    }
    vsp = 0;
  }
  y += vsp;
  
  
//Animation and drawing sprites based on movement:

if (move != 0)
  {
    image_xscale = move; //set the horizontal scale of our sprite to our current direction.
  }
  if (place_meeting(x, y + 1, obj_ground_top_mid)) //checking for floor
  {
    if (move != 0) sprite_index = spr_arrow_running; else sprite_index = spr_arrow_idle;
  }
  else
  {
   if (vsp < 0) sprite_index = spr_arrow_jump; else sprite_index = spr_arrow_falling; //checking if our jump speed is increasing
  }
 
  //Animation Speeds test:
  
  //Idle Speed
  if(sprite_index == spr_arrow_idle)
  {
    image_speed = 0.1;
    if (image_index > image_number)
    {
        image_index = 0;
        image_speed = 0.1;
    }
  }
  //Running Speed:
  else if (sprite_index == spr_arrow_running)
  {
    image_speed = 0.4;
  }
  //Jump animation speed:
  else if (sprite_index == spr_arrow_jump)
  {
    image_speed = 0.2;
    image_index = 0;
  }
  //Falling speed 
  else if (sprite_index == spr_arrow_falling)
  {
    image_speed = 0.2;
  }
  //Damage animation speed
  else if (sprite_index == spr_arrow_damage_fall)
  {
    image_speed = 0.3;
  }
  
   
  //Testing out sound and death parts:
  //If Arrowhead collides with the instakill object, stop the background music
  //, set an alarm, and when that alarm goes off, play some kind of death jingle.
  
  //Next, we want an instance of the fade object to be created after the jingle is done
  //playing, that way the level restarts.
  
  
    //Testing death
    if (place_meeting(x, y + 1, obj_instakill))
    {
        global.num_of_hits = 3;
        instance_destroy(); //destroy player.
        scr_death(); //call death script for test.
        player_input = false;
        
    }
    else if (global.num_of_hits == 3)
    {
        instance_destroy();
        scr_death();   
        //play death animation once it is made
        player_input = false;
    }
    
    //Damage animations applied in enemy code.
    //now for reverting back to the idle animation.\
    /*
    if (sprite_index == spr_arrow_damage_fall && image_index == 6 && image_speed > 0)
    {
        image_speed = 0;
    }
    
    if(sprite_index == spr_arrow_damage_fall && image_speed > 0 && image_speed == 0)
    {
        sprite_index = spr_arrow_idle;
    }
    */
  //Health chunk
  
  //collison enemy check
  

  
  

/* */
/*  */
