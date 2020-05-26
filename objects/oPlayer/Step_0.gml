/// @description player_movement


if(oSystem.game_stop == false){
    var key_jump = keyboard_check(vk_space);
    var key_btn = device_mouse_check_button(0, mb_left);
    

    vsp += grav;
    if(place_meeting(x, y + vsp, oWall) && oSystem.player_die == false){
        while(!place_meeting(x, y + sign(vsp), oWall)){
            y += sign(vsp);
        }
        vsp = 0;
    }else{
        y += vsp;
    }
    
    if(place_meeting(x, y + 1, oWall) && (key_jump || key_btn) && oSystem.player_die == false){
        if(mouse_y > 64 || key_jump)
            vsp = -30;
    }
    if(oSystem.player_die == true && die_animation == true){
        die_animation = false;
        vsp = -30;
    }

}

///player_animation

if(oSystem.player_die == false){
    if(vsp < 0){
        sprite_index = oSystem.sPlayer_fly;
        image_speed = 0.7;
    }else{
        sprite_index = oSystem.sPlayer_run;
        image_speed = 0.2;
		if(oSystem.sPlayer == 6){
			image_speed = 0.7; //chr num 6
		}
    }
}else if(oSystem.player_die == true){
    sprite_index = oSystem.sPlayer_die;   
}

///player_die

if((place_meeting(x, y, oEnemy_01) || place_meeting(x, y, oEnemy_02)) && oSystem.player_die == false){

    oSystem.player_die = true;
    die_animation = true;
    
    __background_set( e__BG.HSpeed, 0, 0 );
     
    if(oSystem.best_score < oSystem.player_score){
        oSystem.finish_text1 = "신기록 달성!!";
    }else{
        oSystem.finish_text1 = "신기록 달성";
        oSystem.finish_text2 = "실패...";
    }
    oSystem.best_score = max(oSystem.player_score, oSystem.best_score);
    
    instance_create(160, 128, oFinishDraw);
    
    ini_open("saves.ini");
    ini_write_real("data", "best_score", oSystem.best_score);
    ini_write_real("data", "coin", oSystem.coin);
    ini_close();
    
    
    
}


///player_get_score
if(oSystem.game_stop == false){
    if(oSystem.player_die == false){
        if(place_meeting(x, y, oCheck)){
            get_score = true;
        }
        if(!place_meeting(x, y, oCheck) && get_score == true && place_meeting(x, y+5, oWall)){
            get_score = false;
            oSystem.player_score++;
        }
    }
}

///player_get_coin
delay_coin += 1 / room_speed;
if(oSystem.game_stop == false){
    if(place_meeting(x, y, oCoin) && delay_coin > 2){
        oSystem.coin += 1;
        instance_create(x, y, oCoinEffect);
        delay_coin = 0;
    }
}

