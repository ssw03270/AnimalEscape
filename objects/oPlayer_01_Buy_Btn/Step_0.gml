/// @description sprtie_setting

i = (oStore.page - 1) * 3 + 1;

if(oStore.buy_player[i] == true){
    if(oSystem.sPlayer == i){
        sprite_index = sUse_02;
    }else{
        sprite_index = sUse_01;
    }
}else{
    sprite_index = sBuy;        
}

///player_buy
var mouse_click = device_mouse_check_button_released(0, mb_left);

if(mouse_click){
    if(oStore.buy_player[i] == false){
        if(oStore.buy_price <= oSystem.coin){
            if(mouse_x > x && mouse_x < x + 64 && mouse_y > y && mouse_y < y + 64){
                oStore.buy_player[i] = true;
                oSystem.coin -= oStore.buy_price;
				
            }
        }
    }
}


///player_use
var mouse_click = device_mouse_check_button_released(0, mb_left);

if(mouse_click){
    if(oStore.buy_player[i] == true){
        if(mouse_x > x && mouse_x < x + 64 && mouse_y > y && mouse_y < y + 64){
            oSystem.sPlayer = i;
            
            ini_open("saves.ini");
            ini_write_real("data", "sPlayer", oSystem.sPlayer);
            ini_close();
        }
        
    }
}


