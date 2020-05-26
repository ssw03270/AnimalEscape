/// @description system_load
ini_open("saves.ini");
best_score = ini_read_real("data", "best_score", 0);
coin = ini_read_real("data", "coin", 0);

sPlayer = ini_read_real("data", "sPlayer", 0);

ini_close();

///system_setting
game_time = 0;
game_speed = 0;
game_stop = false;

player_score = 0;

finish_text1 = "";
finish_text2 = "";

enemy = oEnemy_01;

if(sPlayer == 0)
    sPlayer = 1;

player_die = false;


///player sprite setting
if(sPlayer == 1){
    sPlayer_run = sPlayer_01_run;
    sPlayer_fly = sPlayer_01_fly;
    sPlayer_die = sPlayer_01_die;
}else if(sPlayer == 2){
    sPlayer_run = sPlayer_02_run;
    sPlayer_fly = sPlayer_02_fly;
    sPlayer_die = sPlayer_02_die;
}else if(sPlayer == 3){
    sPlayer_run = sPlayer_03_run;
    sPlayer_fly = sPlayer_03_fly;
    sPlayer_die = sPlayer_03_die;
}else if(sPlayer == 4){
    sPlayer_run = sPlayer_04_run;
    sPlayer_fly = sPlayer_04_fly;
    sPlayer_die = sPlayer_04_die;
}else if(sPlayer == 5){
    sPlayer_run = sPlayer_05_run;
    sPlayer_fly = sPlayer_05_fly;
    sPlayer_die = sPlayer_05_die;
}else if(sPlayer == 6){
    sPlayer_run = sPlayer_06_run;
    sPlayer_fly = sPlayer_06_fly;
    sPlayer_die = sPlayer_06_die;
}

///BGM
//8-Bit March2:11Twin Musicom댄스 & 일렉트로닉 | 극적
//이 노래를 무료로 모든 동영상에 사용할 수 있지만 동영상 설명에 다음을 포함해야 합니다.
//Twin Musicom의 8-Bit March은(는) Creative Commons Attribution 라이선스(https://creativecommons.org/licenses/by/4.0/)에 따라 라이선스가 부여됩니다.
//아티스트: http://www.twinmusicom.org/
if(!audio_is_playing(sBGM)){
    audio_play_sound(sBGM, 1, true);
}

