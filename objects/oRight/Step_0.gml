/// @description click_out
var mouse_click = device_mouse_check_button_released(0, mb_left);

if(mouse_click){
    if(mouse_x > x && mouse_x < x + 32 && mouse_y > y && mouse_y < y + 32){
        if(oStore.page < oStore.last_page)
            oStore.page += 1;
    }
}


