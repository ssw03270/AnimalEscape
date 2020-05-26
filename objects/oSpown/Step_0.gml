/// @description spowning

if(oSystem.game_stop == false){
    delay += sec;
    if(delay >= alpha){
        var n = (current_second * current_second)  % 3;
        if(n == 1)
            oSystem.enemy = oEnemy_01;
        else if(n == 0 || n == 2)
            oSystem.enemy = oEnemy_02;
        instance_create(x, y, oSystem.enemy);
        instance_create(x, 0, oCheck);
		if(coin == true){
			instance_create(x + 25, y - 190, oCoin);
			oSystem.game_time += 0.5;
			coin = false;
		}
        delay = 0;
        alpha = current_second * current_second % 3;
        alpha = alpha / 2 + 0.75;
    }
    if(round(oSystem.game_time % 10) == 0 && round(oSystem.game_time) != 0){
        coin = true;
        
    }
}
