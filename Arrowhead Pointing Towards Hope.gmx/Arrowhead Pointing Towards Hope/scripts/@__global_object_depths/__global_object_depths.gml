// Initialise the global array that allows the lookup of the depth of a given object
// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
// NOTE: MacroExpansion is used to insert the array initialisation at import time
gml_pragma( "global", "__global_object_depths()");

// insert the generated arrays here
global.__objectDepths[0] = -1; // obj_ground_top_mid
global.__objectDepths[1] = 0; // obj_enemy_nofall
global.__objectDepths[2] = 0; // obj_pause
global.__objectDepths[3] = -1; // obj_enemy
global.__objectDepths[4] = -1; // obj_pause_menu
global.__objectDepths[5] = -2; // obj_level_fade
global.__objectDepths[6] = -2; // obj_menu_fade
global.__objectDepths[7] = -2; // obj_restart_level_fade
global.__objectDepths[8] = -1; // obj_grass_right_corner
global.__objectDepths[9] = -2; // obj_return_main_menu
global.__objectDepths[10] = 0; // obj_heart
global.__objectDepths[11] = 0; // obj_splash_text
global.__objectDepths[12] = 0; // obj_instakill
global.__objectDepths[13] = 0; // obj_pillar_bow
global.__objectDepths[14] = 0; // obj_exit_demo_button
global.__objectDepths[15] = 0; // obj_start_game_button
global.__objectDepths[16] = 0; // obj_exit_game_button
global.__objectDepths[17] = 0; // obj_main_menu_button
global.__objectDepths[18] = 0; // obj_tree_right
global.__objectDepths[19] = 0; // obj_resume_game_button
global.__objectDepths[20] = 0; // obj_snd_level
global.__objectDepths[21] = 0; // obj_dirt
global.__objectDepths[22] = -1; // obj_string
global.__objectDepths[23] = 0; // obj_title
global.__objectDepths[24] = 0; // obj_death_controller
global.__objectDepths[25] = -2; // obj_health
global.__objectDepths[26] = 0; // obj_arrowtip
global.__objectDepths[27] = 0; // obj_snd_pause_music
global.__objectDepths[28] = 0; // obj_tree_left
global.__objectDepths[29] = -1; // obj_grass_left_corner
global.__objectDepths[30] = -1; // obj_menu
global.__objectDepths[31] = 0; // obj_player
global.__objectDepths[32] = 0; // obj_enemy_dup


global.__objectNames[0] = "obj_ground_top_mid";
global.__objectNames[1] = "obj_enemy_nofall";
global.__objectNames[2] = "obj_pause";
global.__objectNames[3] = "obj_enemy";
global.__objectNames[4] = "obj_pause_menu";
global.__objectNames[5] = "obj_level_fade";
global.__objectNames[6] = "obj_menu_fade";
global.__objectNames[7] = "obj_restart_level_fade";
global.__objectNames[8] = "obj_grass_right_corner";
global.__objectNames[9] = "obj_return_main_menu";
global.__objectNames[10] = "obj_heart";
global.__objectNames[11] = "obj_splash_text";
global.__objectNames[12] = "obj_instakill";
global.__objectNames[13] = "obj_pillar_bow";
global.__objectNames[14] = "obj_exit_demo_button";
global.__objectNames[15] = "obj_start_game_button";
global.__objectNames[16] = "obj_exit_game_button";
global.__objectNames[17] = "obj_main_menu_button";
global.__objectNames[18] = "obj_tree_right";
global.__objectNames[19] = "obj_resume_game_button";
global.__objectNames[20] = "obj_snd_level";
global.__objectNames[21] = "obj_dirt";
global.__objectNames[22] = "obj_string";
global.__objectNames[23] = "obj_title";
global.__objectNames[24] = "obj_death_controller";
global.__objectNames[25] = "obj_health";
global.__objectNames[26] = "obj_arrowtip";
global.__objectNames[27] = "obj_snd_pause_music";
global.__objectNames[28] = "obj_tree_left";
global.__objectNames[29] = "obj_grass_left_corner";
global.__objectNames[30] = "obj_menu";
global.__objectNames[31] = "obj_player";
global.__objectNames[32] = "obj_enemy_dup";


// create another array that has the correct entries
var len = array_length_1d(global.__objectDepths);
global.__objectID2Depth = [];
for( var i=0; i<len; ++i ) {
	var objID = asset_get_index( global.__objectNames[i] );
	if (objID >= 0) {
		global.__objectID2Depth[ objID ] = global.__objectDepths[i];
	} // end if
} // end for