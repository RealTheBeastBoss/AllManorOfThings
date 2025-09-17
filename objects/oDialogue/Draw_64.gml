var character_width = string_width(current_dialogue.character_name);
draw_rectangle(200, 500, 1080, 700, false);
draw_rectangle(200, 423, character_width + 240, 490, false);
draw_set_color(#343434);
draw_rectangle(210, 510, 1070, 690, false);
draw_rectangle(210, 433, character_width + 230, 480, false);
draw_set_color(c_white);
// Draw Text
draw_set_valign(fa_middle);
draw_text(220, 458, current_dialogue.character_name);
var y_level = 515;
draw_set_valign(fa_top);
for (var i = 0; i < array_length(current_dialogue.text); i++;) {
	draw_text(215, y_level, current_dialogue.text[i]);
	y_level += 30;
}
if show_options and array_length(options_boxes) == 0 {
	draw_set_halign(fa_right);
	draw_set_valign(fa_bottom);
	if current_dialogue.options == 0 {
		draw_text(1060, 680, "Click to End Dialogue");
	} else {
		draw_text(1060, 680, "Click to Continue");
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
			show_options = false;
		}
	}
} else if show_options {
	draw_set_valign(fa_middle);
	draw_set_halign(fa_right);
	for (var i = 0; i < array_length(options_boxes); i++;) {
		var option_box = options_boxes[i];
		var text_width = string_width(string(option_box.display));
		var mouse_hovering = mouse_x >= 1040 - text_width and mouse_x <= 1080 and mouse_y >= option_box.y_pos - 67 and mouse_y <= option_box.y_pos;
		if mouse_hovering {
			draw_set_colour(#FF5500);
		}
		draw_rectangle(1040 - text_width, option_box.y_pos - 67, 1080, real(option_box.y_pos), false);
		draw_set_color(#343434);
		draw_rectangle(1050 - text_width, option_box.y_pos - 57, 1070, real(option_box.y_pos) - 10, false);
		draw_set_color(c_white);
		draw_text(1060, real(option_box.y_pos) - 32, option_box.display);
		if mouse_hovering and mouse_check_button_released(mb_left) {
			if struct_exists(current_dialogue, "time_skip") {
				oGame.game_time += current_dialogue.time_skip;
			}
			if struct_exists(current_dialogue, "leave_function") {
				current_dialogue.leave_function();
			}
			current_dialogue = dialogue_tree[option_box.dialogue];
			alarm[0] = current_dialogue.length * 60;
			show_options = false;
			options_boxes = [];
		}
	}
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
}