/// @description Voice Line Finished

if struct_exists(current_dialogue, "interrupt") {
	current_dialogue = dialogue_tree[current_dialogue.options];
	alarm[0] = current_dialogue.length * 60;
	if struct_exists(current_dialogue, "voice_line") audio_play_sound(current_dialogue.voice_line, 1, false);
} else {
	show_options = true;
	if is_array(current_dialogue.options) {
		var y_level = 490;
		for (var i = 0; i < array_length(current_dialogue.options); i++;) {
			var option = current_dialogue.options[i];
			array_push(options_boxes, {
				display: option[0],
				dialogue: option[1],
				y_pos: y_level
			});
			y_level -= 77;
		}
	}
}