/// @description store_setting

ini_open("saves.ini");

buy_player[1] = ini_read_real("data", "buy_player_01", true);
buy_player[2] = ini_read_real("data", "buy_player_02", false);
buy_player[3] = ini_read_real("data", "buy_player_03", false);
buy_player[4] = ini_read_real("data", "buy_player_04", false);
buy_player[5] = ini_read_real("data", "buy_player_05", false);
buy_player[6] = ini_read_real("data", "buy_player_06", false);

ini_close();


buy_price = 30 ; //price will increase two time when you buy it

page = 1;
last_page = 2;

