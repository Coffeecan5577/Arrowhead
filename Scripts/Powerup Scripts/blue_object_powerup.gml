  with (obj_player) //with allows us to affect other objects, in this case the player object. It also has access to all of that object's variables.
  {
    jumpspeed = jumpspeed_powerup;
    sprite_index = spr_player_b; //apply the sprite change
    alarm[0] = 300; //counts by frames
  }

  instance_destroy(); //Gets rid of object after collision
