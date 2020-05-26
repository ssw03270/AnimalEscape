/// @description store_data_write
ini_open("saves.ini");
ini_write_real("data", "buy_player_01", buy_player[1]);
ini_write_real("data", "buy_player_02", buy_player[2]);
ini_write_real("data", "buy_player_03", buy_player[3]);
ini_write_real("data", "buy_player_04", buy_player[4]);
ini_write_real("data", "buy_player_05", buy_player[5]);
ini_write_real("data", "buy_player_06", buy_player[6]);

ini_write_real("data", "coin", oSystem.coin);
ini_write_real("data", "buy_price", buy_price);


ini_close();

