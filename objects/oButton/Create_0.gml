game_button_type = 0;

if display_text == "Game 1" or display_text == "Game 2" or display_text == "Game 3" or display_text == "Game 4" {
	if file_exists(display_text + ".tbb") {
		game_button_type = 1;
	} else {
		game_button_type = 2;
	}
}