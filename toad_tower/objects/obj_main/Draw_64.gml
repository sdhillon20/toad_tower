// Set font color and alignment
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_top);

// Draw score at the middle-top of the screen
draw_text(display_get_gui_width() / 2, 20, "Score: " + string(score));



draw_set_font(Font1); 

