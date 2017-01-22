///Initialize Variables
grav = 0.2; //Gravity
hsp = 0; //Horizontal Speed
vsp = 0; //Vertical Speed
movespeed = 4;

jumpspeed_normal = 7;
jumpspeed_powerup = 10;

jumpspeed = jumpspeed_normal;


  if (global.checkpointR == room)
  {
    x = global.checkpointx; //player position is equal to checkpoint position.
    y = global.checkpointy;
  }
