/// @description Get Player's Input:

///Player Movement (Keyboard)
if (keyboard_check(ord("D")) && !keyboard_check(ord("A")))
{
	hspeed += accel_spd;
	hspeed = min(hspeed, max_spd);
}

if (hspeed > 0) && !(keyboard_check(ord("D")))
{
	hspeed -= decel_spd;
}

if (keyboard_check(ord("A"))) && !(keyboard_check(ord("D")))
{
	hspeed -= accel_spd;
	hspeed = max(hspeed, -max_spd);
}

if (hspeed < 0) && !(keyboard_check(ord("A")))
{
	hspeed += decel_spd;
}

if ((keyboard_check(ord("A"))) && (keyboard_check(ord("D"))) || !(keyboard_check(ord("A"))) && !(keyboard_check(ord("D"))))
{
	hspeed = 0;
}

//Controller joystick movement

if (gamepad_axis_value(0, gp_axislh) > 0.2) || (gamepad_axis_value(0, gp_axislh) < (-0.2)) //finish up later
{
	hspeed = gamepad_axis_value(0, gp_axislh) * max_spd;
}
else
{
	hspeed = 0;
}

//No need to modify vspeed for a platformer.
 
 





