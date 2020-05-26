/// @description enemy_movement

if(oSystem.game_stop == false){
    vsp += grav;
    
    if(place_meeting(x, y + vsp, oWall)){
        while(!place_meeting(x, y + sign(vsp), oWall)){
            y += sign(vsp);
        }
        vsp = 0;
    }else{
        y += vsp;
    }
    x -= oSystem.game_speed;
}

