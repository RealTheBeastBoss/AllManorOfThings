instance_deactivate_layer("Audio_Instances");
instance_deactivate_layer("Controls_Instances");

// If Values are different to the Default, show them correctly
if oGame.debug_time {
	layer_set_visible("Debug_Off", false);
	layer_set_visible("Debug_On", true);
}
if window_get_fullscreen() {
	layer_set_visible("Fullscreen_Off", false);
	layer_set_visible("Fullscreen_On", true);
}
if oGame.skip_intro {
	layer_set_visible("Skip_No", false);
	layer_set_visible("Skip_Yes", true);
}