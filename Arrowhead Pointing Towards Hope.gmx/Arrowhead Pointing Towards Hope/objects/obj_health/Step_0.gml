image_speed = 0;

switch (global.num_of_hits)
{
    case 0:
    {
        image_index = 0;
        break;
    }
    case 1:
    {
        image_index = 1;
        break;
    }   
    case 2:
    {
        image_index = 2;
        break;
    } 
    case 3:
    {
        image_index = 3;
        break;
    }
}

x = __view_get( e__VW.XView, 0 ) + 80;
y = __view_get( e__VW.YView, 0 ) + 50;

    

