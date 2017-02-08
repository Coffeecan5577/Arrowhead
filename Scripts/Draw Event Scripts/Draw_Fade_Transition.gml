//Here we modify the fade variable.
a = clamp(a + (fade * 0.05),0,1);
//clamp takes a variable value and restricts it between to preset values. In our case less than 1 but greater than 0.

if (a == 1) //if rectangle is fully drawn, or solid black
{
  room_goto_next();
  fade = -1;
}

if (a == 0) && (fade == -1) //if we are fading back in...
{
  instance_destroy();
}

//draw the rectangle based on variable value

draw_set_color(c_black);
draw_set_alpha(a);
draw_rectangle(view_xview[0],  //get x coordinate of current camera
view_yview[0], //get y coordinate
view_xview[0] + view_wview[0], //get x coordinate plus the width
view_yview[0] + view_hview[0], 0 //get the y coordinate plus the height
) //final 0 determines outline

draw_set_alpha(1);
