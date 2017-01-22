  if (instance_exists(obj_player))
  {
    if (round(obj_player.y + (obj_player.sprite_height / 2)) > y) || (obj_player.key_down)  //checking whether or not the player is above the platform. round converts the real value to an int. Also checking if down key is pressed.
    {
      mask_index = -1;
    }
    else
    {
      mask_index = spr_platform;
    }
  }
