/// @description price_draw
draw_self();

draw_set_font(fMidText);
draw_set_halign(fa_left);
draw_text_colour(x , y, string_hash_to_newline("가격 : ") + string_hash_to_newline(oStore.buy_price), c_black, c_black, c_black, c_black, 1);


