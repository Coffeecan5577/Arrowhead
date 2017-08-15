
if (trans_time > 0)
{
 trans_time -=1;
}

if (trans_time == 0) //If our wait time is up, then draw rectangle
{
    //Here we modify the fade variable.
    a = clamp(a + (fade * 0.02),0,1);
    //clamp takes a variable value and restricts it between to preset values. In our case less than 1 but greater than 0.
    if (a == 1 && trans_time == 0) //if rectangle is fully drawn, or solid black
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
    draw_rectangle(__view_get( e__VW.XView, 0 ),  //get x coordinate of current camera
    __view_get( e__VW.YView, 0 ), //get y coordinate
    __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ), //get x coordinate plus the width
    __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ), 0 //get the y coordinate plus the height
    ) //final 0 determines outline
    
    draw_set_alpha(1);
}


