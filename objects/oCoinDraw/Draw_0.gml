/// @description coin_draw
draw_self();

draw_set_font(fMidText);
draw_set_halign(fa_left);
draw_text_colour(x , y, string_hash_to_newline("코인 : ") + string_hash_to_newline(oSystem.coin), c_black, c_black, c_black, c_black, 1);

