/// @description score_draw
draw_self();

draw_set_halign(fa_middle);
draw_set_font(fBigText);
draw_text_colour(x + 16, y + 20, string_hash_to_newline(oSystem.player_score), c_black, c_black, c_black, c_black, 1);
