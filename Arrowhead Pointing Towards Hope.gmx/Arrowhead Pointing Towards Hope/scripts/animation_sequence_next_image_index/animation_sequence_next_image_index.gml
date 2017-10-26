/// @description Get the image_index to draw for the next step in an animation sequence
/// @param sequence Sequence to get the image_index for

//Read function parameters
var sequence = argument0;

//Get the current animation frame
var current_frame = ds_list_find_value(sequence, global._animation_sequence_current_frame_idx);

//Get the number of steps the current animation frame has been display for
var current_display_count = ds_list_find_value(sequence, global._animation_sequence_current_frame_counter);

//Get how many steps the current animation frame should be display for
var max_display_count = ds_list_find_value(sequence, global._animation_sequence_first_frame_idx + (current_frame * 2) + 1);

//Increase our step counter
current_display_count++;
if (current_display_count >= max_display_count) {

	//The current frame has been display long enough so go to the next frame and reset the frame step counter
	current_frame++;
	current_display_count = 0;
	if (global._animation_sequence_first_frame_idx + (current_frame * 2) >= ds_list_size(sequence)) {
	
		//The end of the animation has been reached so loop back to the first frame of the animation
		current_frame = 0;
		
		//Increate the counter of how many times the animation has been completed
		var completed_counter = ds_list_find_value(sequence, global._animation_sequence_completed_counter);
		completed_counter++;
		ds_list_replace(sequence, global._animation_sequence_completed_counter, completed_counter);
	}
	
	//Store the current animation frame back to the animation sequence's ds_list
	ds_list_replace(sequence, global._animation_sequence_current_frame_idx, current_frame);
}

//Store the current frame step founter back to the animation sequence's ds_list
ds_list_replace(sequence, global._animation_sequence_current_frame_counter, current_display_count);

//Return the image_index of the current sprite frame to display
return ds_list_find_value(sequence, global._animation_sequence_first_frame_idx + (current_frame * 2));
