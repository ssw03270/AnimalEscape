/// @description mouse_btn_click
var mouse_click = device_mouse_check_button_released(0, mb_left);
var key_space = keyboard_check(vk_space);
if(mouse_click || key_space){
    room_goto(room_start);
}

