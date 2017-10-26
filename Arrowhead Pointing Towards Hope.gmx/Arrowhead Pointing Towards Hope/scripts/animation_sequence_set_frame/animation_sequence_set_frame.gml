/// @description Set the current animation frame
/// @param sequence Sequence set the frame of
/// @param frame Frame number to set the animation to

//Read function parameters
var sequence = argument0;
var frame = argument1;

ds_list_replace(sequence, global._animation_sequence_current_frame_idx, frame);
ds_list_replace(sequence, global._animation_sequence_current_frame_counter, 0);
