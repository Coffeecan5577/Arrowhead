/// @description Add a frame to an animation sequence
/// @param sequence Sequence to add frame to
/// @param img_index Frame number in sprite
/// @param delay Number of game steps to display for

//Read function parameters
var sequence = argument0;
var img_index = argument1;
var delay = argument2;

//Add the frame details to the animation sequence ds_list
ds_list_add(sequence, img_index);
ds_list_add(sequence, delay);
