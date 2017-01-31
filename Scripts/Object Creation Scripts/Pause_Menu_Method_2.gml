//This script will cover the entirety of the second way to create a pause menu in GameMaker.

//Create Event for pause menu object
//we only need a local variable
pause = 0;

//Key_Pressed Event. Pressing the P Key in this case

if (!pause) //if pause is 0
{
  pause = 1;
  instance_deactivate_all(true); //deactivate everything.
  //********NOTE********//
  /* If you wanted to have pause menu objects and a separate menu navigation, this would be where those objects
  are initialized. */
}
else
{
  pause = 0;
  instance_activate_all();
  /* Same goes here for deactivating all of the instances or objects in the pause menu.
}

//Make the object persistent and place in an initialize room of some kind next.

//Drawing pause menu and text next:
if (pause)
{
  draw_set_color(c_black);
  draw_rectangle(0,0, room_width, room_height, 0);
  draw_set_halign(fa_center);
  draw_set_font(fnt_menu);
  draw_set_color(c_white);
  draw_text(room_width / 2, room_height / 2, "Game Paused");
  draw_set_color(c_black);
}
