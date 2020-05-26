/// @description click_stop
var mouse_click = device_mouse_check_button_released(0, mb_left);

if(mouse_click){
    if(mouse_x > x && mouse_x < x + 48 && mouse_y > y && mouse_y < y + 48){
        if(oSystem.game_stop == false){
            oSystem.game_stop = true;
            __background_set( e__BG.HSpeed, 0, 0 );
        }else{
            oSystem.game_stop = false;
            __background_set( e__BG.HSpeed, 0, -1 );
        }
    }
}


///sprtie_setting
if(oSystem.game_stop == true){
    sprite_index = sStop_01;
}else{
    sprite_index = sStop_02;    
}

