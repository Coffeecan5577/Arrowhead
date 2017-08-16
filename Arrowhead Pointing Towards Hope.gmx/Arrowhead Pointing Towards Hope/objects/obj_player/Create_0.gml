/// @description initialize variables
max_spd = 10;
accel_spd = 1;
decel_spd = 2;

//jump variables
jump_spd = 15;
grav = 1; //gravity and max gravity subject to change later
grav_max = 10;

//local variables for the horizontal and vertical speeds.
hsp = hspeed;
vsp = vspeed;
mvmt = false; //for sprite and movement tests
dir = 1; //Facing right by default.

//Gamepad button names
gpad_A = gp_face1;
gpad_B = gp_face2;
gpad_X = gp_face3;
gpad_y = gp_face4;
