
hsp = dir * movespeed;
vsp += grav;
chck_pxls_below = 8;
image_speed = 0.3;

//Enemy collision
//Horizontal Collisions
  if (place_meeting(x + hsp, y, obj_ground_top_mid)) //Check for collision before we move in that space
  {
    //If we are about to collide, slowly move up until the collision happens.
    while(!place_meeting(x + sign(hsp), y, obj_ground_top_mid))
    {
      x += sign(hsp);
    }
    dir *= -1; //change direction if collided
  }
 

  //Vertical Collisions
    if (place_meeting(x, y + vsp, obj_ground_top_mid)) //Check for collision before we move in that space
    {
      //If we are about to collide, slowly move up until the collision happens.
      while(!place_meeting(x, y + sign(vsp), obj_ground_top_mid))
      {
        y += sign(vsp);
      }
      vsp = 0; //stop moving if we have collided

        if (fearofheights) && !position_meeting(x+(sprite_width/2) * dir, y+(sprite_height/2)+chck_pxls_below, obj_ground_top_mid)
          {
            dir *= -1;
          }
    }
    

  if(place_meeting(x,y,obj_player))
  {
    if (obj_player.y < y - 16) //are we colliding with the player from the top.
    {
      with (obj_player) vsp = -jumpspeed; //bounce off the enemy
      enemy_hp = 0;    
      audio_play_sound(snd_enemy_death, 0, false);
      movespeed = 0; //stop moving
      hsp = 0;
      instance_change(obj_enemy_dup, false);
      with (obj_enemy_dup)
      {
        sprite_index = spr_enemy_death;
        image_speed = 1;
      }
    }
  }
x += hsp;
y += vsp;



