/// @description Initialize Variables
grav = 0.2; //Gravity
hsp = 0; //Horizontal Speed
vsp = 0; //Vertical Speed
movespeed = 4;
jumps = 0;
dir = 1; //indicates which way Arrowhead is facing based on move value
global.num_of_hits = 0; //health

//Setting a deadzone for the gamepad analog sticks
gamepad_set_axis_deadzone(0, 0.3);

max_jumps = 1; //maximum number of jumps total

jumpspeed_normal = 7;
jumpspeed_powerup = 10;

jumpspeed = jumpspeed_normal;


key_down = 0;


