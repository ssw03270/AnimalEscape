/// @description coin_movement

vsp += grav;

if(place_meeting(x, y + vsp + 20, oWall)){
    while(!place_meeting(x, y + sign(vsp) + 20, oWall)){
        y += sign(vsp);
    }
    vsp = 0;
}else{
    y += vsp;
}
x -= oSystem.game_speed;

///coin_meet
if(place_meeting(x + 20, y, oPlayer)){
    instance_destroy();
}
if(place_meeting(x - 50, y, oEnemy_01) || place_meeting(x - 50, y, oEnemy_02) || place_meeting(x + 50, y, oEnemy_01) || place_meeting(x + 50, y, oEnemy_02)){
    x -= 100;
}

