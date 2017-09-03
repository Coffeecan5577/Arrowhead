/// @description initialize variables
run_spd = 3;

//jump variables
grav = 0.4; //gravity and max gravity subject to change later
grav_max = 10;
num_of_jumps = 1; //number of jumps for the player.

//local variables for the horizontal and vertical speeds.
hsp = 0;
vsp = 0;
dir = 1; //facing right by default. This helps determine sprite animations.

//Gamepad button names
gpad_A = gp_face1;
gpad_B = gp_face2;
gpad_X = gp_face3;
gpad_y = gp_face4;
