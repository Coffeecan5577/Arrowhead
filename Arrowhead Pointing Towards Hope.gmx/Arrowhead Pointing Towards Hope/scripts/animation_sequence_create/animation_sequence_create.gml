/// @description Create a new animation sequence

//Set up some global variables that we will use to reference specific locations within the animation sequence's ds_list
global._animation_sequence_current_frame_idx = 0;
global._animation_sequence_current_frame_counter = 1;
global._animation_sequence_completed_counter = 2;
global._animation_sequence_first_frame_idx = 3;

//Create a ds_list that will store all details related to the animation sequence
var sequence = ds_list_create();

//Reserve space in the ds_list for variables that track progress of the animation sequence
ds_list_add(sequence, 0, 0, 0);

return sequence;
