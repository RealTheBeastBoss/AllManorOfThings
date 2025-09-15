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

// Debug Text
if debug_time {
	var debug_text = [
		"Current Room: " + room_get_name(room),
		"Opacity: " + string(trans_opacity),
		"Next Room: " + room_get_name(next_room),
		"Game Time: " + string(game_time)
	];
	var y_level = 0;
	for (var i = 0; i < array_length(debug_text); i++;) {
		draw_text(0, y_level, debug_text[i]);
		y_level += 30;
	}
}