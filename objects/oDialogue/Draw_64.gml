var character_width = noone;
if struct_exists(current_dialogue, "character_name") {
	character_width = string_width(current_dialogue.character_name);
	draw_rectangle(20, 423, character_width + 60, 490, false);
}
draw_rectangle(20, 500, 900, 700, false);
draw_set_color(#343434);
draw_rectangle(30, 510, 890, 690, false);
if struct_exists(current_dialogue, "character_name") {
	draw_rectangle(30, 433, character_width + 50, 480, false);
}
if struct_exists(current_dialogue, "img") {
	draw_sprite(current_dialogue.img, -1, 920, 720);
}
draw_set_color(c_white);
// Draw Text
if struct_exists(current_dialogue, "character_name") {
	draw_set_valign(fa_middle);
	draw_text(40, 458, current_dialogue.character_name);
}
var y_level = 515;
draw_set_valign(fa_top);
for (var i = 0; i < array_length(current_dialogue.text); i++;) {
	draw_text(35, y_level, current_dialogue.text[i]);
	y_level += 30;
}
if show_options and array_length(options_boxes) == 0 {
	draw_set_halign(fa_right);
	draw_set_valign(fa_bottom);
	if current_dialogue.options == 0 {
		draw_text(880, 680, "Click to End Dialogue");
	} else {
		draw_text(880, 680, "Click to Continue");
	}
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	if mouse_check_button_released(mb_left) {
		if struct_exists(current_dialogue, "time_skip") {
			oGame.game_time += current_dialogue.time_skip;
		}
		if struct_exists(current_dialogue, "leave_function") {
			current_dialogue.leave_function();
		}
		if current_dialogue.options == 0 {
			instance_destroy();
		} else {
			current_dialogue = dialogue_tree[current_dialogue.options];
			alarm[0] = current_dialogue.length * 60;
			if struct_exists(current_dialogue, "voice_line") audio_play_sound(current_dialogue.voice_line, 1, false);
			show_options = false;
		}
	}
} else if show_options {
	draw_set_valign(fa_middle);
	draw_set_halign(fa_right);
	for (var i = 0; i < array_length(options_boxes); i++;) {
		var option_box = options_boxes[i];
		var text_width = string_width(string(option_box.display));
		var mouse_hovering = mouse_x >= 860 - text_width and mouse_x <= 900 and mouse_y >= option_box.y_pos - 67 and mouse_y <= option_box.y_pos;
		if mouse_hovering {
			draw_set_colour(#FF5500);
		}
		draw_rectangle(860 - text_width, option_box.y_pos - 67, 900, real(option_box.y_pos), false);
		draw_set_color(#343434);
		draw_rectangle(870 - text_width, option_box.y_pos - 57, 890, real(option_box.y_pos) - 10, false);
		draw_set_color(c_white);
		draw_text(880, real(option_box.y_pos) - 32, option_box.display);
		if mouse_hovering and mouse_check_button_released(mb_left) {
			if struct_exists(current_dialogue, "time_skip") {
				oGame.game_time += current_dialogue.time_skip;
			}
			if struct_exists(current_dialogue, "leave_function") {
				current_dialogue.leave_function();
			}
			current_dialogue = dialogue_tree[option_box.dialogue];
			alarm[0] = current_dialogue.length * 60;
			if struct_exists(current_dialogue, "voice_line") audio_play_sound(current_dialogue.voice_line, 1, false);
			show_options = false;
			options_boxes = [];
		}
	}
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
}