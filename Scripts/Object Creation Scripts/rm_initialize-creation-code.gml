//working with global variables
global.checkpoint = noone; //contains active checkpoint ID. noone means there are no active instances
global.checkpointR = 0; //contains the room the checkpoint is in.
global.checkpointx = 0; //checkpoint X position
global.checkpointy = 0; //checkpoint Y position

room_goto_next(); //go to the next room after variables are initialized
