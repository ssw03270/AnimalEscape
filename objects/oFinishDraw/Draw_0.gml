/// @description text_draw
draw_self();

draw_set_halign(fa_middle);
draw_set_font(fMidText);
draw_text_colour(x + 15, y, string_hash_to_newline(oSystem.finish_text1), c_black, c_black, c_black, c_black, 1);
draw_text_colour(x + 15, y + 30, string_hash_to_newline(oSystem.finish_text2), c_black, c_black, c_black, c_black, 1);

