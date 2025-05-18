var display_score = -score; // assuming score increases as player goes upward
var center_x = display_get_gui_width() / 2;
var center_y = 20;

draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_color(c_white);
draw_text(center_x, center_y, string(display_score));



