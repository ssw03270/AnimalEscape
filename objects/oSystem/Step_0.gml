/// @description system_time & speed
if(player_die == true){
    game_speed = 0;
}else{
    game_time += 1 / room_speed;
    game_speed = 12 + game_time / 13;
}

///back_space
var key_back = keyboard_check_released(vk_backspace);
if(key_back && room_get_name(room) == "room_play"){
    room_goto(room_start);
}else if(key_back && room_get_name(room) == "room_start"){
	game_end();
}else if(key_back && room_get_name(room) == "room_store"){
    room_goto(room_start);
}

