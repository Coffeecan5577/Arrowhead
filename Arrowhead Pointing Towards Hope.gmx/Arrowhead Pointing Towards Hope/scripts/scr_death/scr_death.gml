  //When we collide with the instakill object (bottom of screen),
  /* 1. Deactivate everything on screen
     2. Disable player input.
     3. Stop background music
     4. Play death sound
     5. Set an alarm for about a second (60) is the value
     6. Play a death jingle of some kind.
     7. When the jingle is finished, create an instance of the fade object.
     8. Restart the room.
  */
  
  //if we collide with an enemy and die, same thing, except play death animation.
  
  audio_stop_sound(snd_bg_level);
  audio_play_sound(snd_arrow_death, 0, false);
  instance_create(0, 0, obj_death_controller);
