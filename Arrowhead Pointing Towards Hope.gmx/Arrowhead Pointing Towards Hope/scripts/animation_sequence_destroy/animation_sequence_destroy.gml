/// @description Release the memory for an animation sequence
/// @param sequence Sequence to destroy

//Read function parameters
var sequence = argument0;

//Destroy the animation sequence's ds_list
ds_list_destroy(sequence);
