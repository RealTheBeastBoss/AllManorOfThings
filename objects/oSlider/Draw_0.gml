draw_self();

draw_rectangle(current_x, y_location, current_x + 16, y_location + 35, false);

draw_set_valign(fa_middle);
draw_text(x + 266, y + 32, display);
draw_set_valign(fa_top);