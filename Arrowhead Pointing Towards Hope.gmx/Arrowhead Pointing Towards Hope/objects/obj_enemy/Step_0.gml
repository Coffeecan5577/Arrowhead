//Vector variables
var vector2_x = 0;
var vector2_y = 1;

//Horizontal movement:
velocity_[vector2_x] = clamp(velocity_[vector2_x] + x_input, -max_velocity_[vector2_x], max_velocity_[vector2_x]); 

//Determining movement based on direction.
if (dir == 1)
{
	velocity_[vector2_x] += acceleration_;
	if (velocity_[vector2_x] >= max_velocity_) // Maxing out positive value
	{
		velocity_[vector2_x] = max_velocity_;
	}
}
else if (dir == -1)
{
	velocity_[vector2_x] -= acceleration_;
	if (velocity_[vector2_x] <= -max_velocity_) //Maxing out negative value
	{
		velocity_[vector2_x] = -max_velocity_;	
	}
}


//Applying friction
velocity_[vector2_x] = lerp(velocity_[vector2_x], 0, .20); //Applies 20% friction to object until we reach 0



//Gravity
velocity_[vector2_y] += grav_;

//Move and contact tiles
move_and_contact_tiles(collision_tile_map_id_, 32, velocity_);

//Changing direction based on colliding with tiles
if (dir == 1 && move_and_contact_tiles(collision_tile_map_id_, 32, velocity_))
{
	dir = -1;
}
else
{
	dir = 1;
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

