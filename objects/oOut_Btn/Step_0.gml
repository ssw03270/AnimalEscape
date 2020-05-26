/// @description click_out
var mouse_click = device_mouse_check_button_released(0, mb_left);

if(mouse_click){
    if(mouse_x > x && mouse_x < x + 48 && mouse_y > y && mouse_y < y + 48){
        room_goto(room_start);
    }
}


