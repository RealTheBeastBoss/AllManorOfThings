// Screen Transition
if trans_opacity > 0 {
	// Draw Transition
	draw_set_color(#343434);
	draw_set_alpha(trans_opacity);
	draw_rectangle(0, 0, 1280, 720, false);
	draw_set_color(c_white);
	draw_set_alpha(1);
	// Handle Values
	if trans_opacity == 1 {
		room_goto(next_room);
	}
	if room == next_room {
		trans_opacity -= 0.1;
	} else {
		trans_opacity += 0.1;
	}
}

// Game UI
if room == TheManor {
	// Draw White Borders
	draw_rectangle(1060, 20, 1260, 147, false);
	// Draw Grey Backgrounds
	draw_set_color(#343434);
	draw_rectangle(1070, 30, 1250, 137, false);
	draw_set_color(c_white);
	// Draw Text
	draw_set_halign(fa_center);
	draw_text(1160, 40, "Thursday");
	draw_text(1160, 90, "5:00pm");
	draw_set_halign(fa_left);
}

// Debug Text
if debug_time {
	var debug_text = [
		"Current Room: " + room_get_name(room),
		"Save Game: " + string(save_game),
		"Game Time: " + string(game_time)
	];
	if room == TheManor {
		var debug_manor = [
			"Camera Position: (" + string(camera_get_view_x(view_camera[0])) + ", " + string(camera_get_view_y(view_camera[0])) + ")"
		];
		debug_text = array_concat(debug_text, debug_manor);
	}
	if instance_exists(oDialogue) {
		var debug_dialogue = [
			"Dialogue Name: " + oDialogue.name,
			"Dialogue Id: " + string(array_get_index(oDialogue.dialogue_tree, oDialogue.current_dialogue)),
			"Showing Options: " + string(oDialogue.show_options)
		];
		debug_text = array_concat(debug_text, debug_dialogue);
	}
	var y_level = 0;
	for (var i = 0; i < array_length(debug_text); i++;) {
		draw_text(0, y_level, debug_text[i]);
		y_level += 30;
	}
}