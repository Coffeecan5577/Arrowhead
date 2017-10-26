/// @description How many times the animation sequence has completed
/// @param sequence Sequence to add frame to

//Read function parameters
var sequence = argument0;

//Return the completed count from the animation sequence's ds_list
return ds_list_find_value(sequence, global._animation_sequence_completed_counter);
