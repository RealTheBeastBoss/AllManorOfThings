draw_self();

if oGame.debug_time {
	var debug_text = [
		"Current Pos: (" + string(x) + ", " + string(y) + ")"
	];
	var rel_y = y - 18;
	for (var i = 0; i < array_length(debug_text); i++;) {
		draw_text_transformed(x - 18, rel_y, debug_text[i], 0.25, 0.25, 0);
		rel_y -= 8;
	}
}