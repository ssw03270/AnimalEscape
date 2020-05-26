/// @description text_draw
draw_self();

draw_set_halign(fa_middle);
draw_set_font(fSmallText);
draw_text_colour(x - 10, y, string_hash_to_newline("시작하려면 아무 곳이나"), c_black, c_black, c_black, c_black, 1);
draw_text_colour(x - 10, y + 20, string_hash_to_newline("클릭해주세요"), c_black, c_black, c_black, c_black, 1);
