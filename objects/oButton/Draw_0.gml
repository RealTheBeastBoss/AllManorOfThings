draw_self();

if game_button_type > 0 {
	draw_set_halign(fa_center);
	draw_text(x + (sprite_width / 2), y + 15, display_text);
	if game_button_type == 2 {
		draw_text(x + (sprite_width / 2), y + (sprite_height / 2), "No Game Data");
	}
	draw_set_halign(fa_left);
}