// Initialise the global array that allows the lookup of the depth of a given object
// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
// NOTE: MacroExpansion is used to insert the array initialisation at import time
gml_pragma( "global", "__global_object_depths()");

// insert the generated arrays here
global.__objectDepths[0] = 0; // oStartDraw
global.__objectDepths[1] = 0; // oBestScoreDraw
global.__objectDepths[2] = 0; // oCoinDraw
global.__objectDepths[3] = 0; // oPriceDraw
global.__objectDepths[4] = 0; // oPageDraw
global.__objectDepths[5] = 0; // oStore_btn
global.__objectDepths[6] = 0; // oPlayer
global.__objectDepths[7] = 0; // oEnemy_01
global.__objectDepths[8] = 0; // oEnemy_02
global.__objectDepths[9] = 0; // oCheck
global.__objectDepths[10] = 0; // oWall
global.__objectDepths[11] = 0; // oSpown
global.__objectDepths[12] = 0; // oScore
global.__objectDepths[13] = -1; // oCoin
global.__objectDepths[14] = 0; // oFinishDraw
global.__objectDepths[15] = 0; // oStop_Btn
global.__objectDepths[16] = 0; // oCoinEffect
global.__objectDepths[17] = 0; // black_tile
global.__objectDepths[18] = 0; // oSystem
global.__objectDepths[19] = 0; // oStore
global.__objectDepths[20] = 0; // oPlayer_01_Buy
global.__objectDepths[21] = 0; // oPlayer_01_Buy_Btn
global.__objectDepths[22] = 0; // oPlayer_02_Buy
global.__objectDepths[23] = 0; // oPlayer_02_Buy_Btn
global.__objectDepths[24] = 0; // oPlayer_03_Buy
global.__objectDepths[25] = 0; // oPlayer_03_Buy_Btn
global.__objectDepths[26] = 0; // oOut_Btn
global.__objectDepths[27] = 0; // oLeft
global.__objectDepths[28] = 0; // oRight
global.__objectDepths[29] = 0; // oTitle_01
global.__objectDepths[30] = 1; // oTitle_02


global.__objectNames[0] = "oStartDraw";
global.__objectNames[1] = "oBestScoreDraw";
global.__objectNames[2] = "oCoinDraw";
global.__objectNames[3] = "oPriceDraw";
global.__objectNames[4] = "oPageDraw";
global.__objectNames[5] = "oStore_btn";
global.__objectNames[6] = "oPlayer";
global.__objectNames[7] = "oEnemy_01";
global.__objectNames[8] = "oEnemy_02";
global.__objectNames[9] = "oCheck";
global.__objectNames[10] = "oWall";
global.__objectNames[11] = "oSpown";
global.__objectNames[12] = "oScore";
global.__objectNames[13] = "oCoin";
global.__objectNames[14] = "oFinishDraw";
global.__objectNames[15] = "oStop_Btn";
global.__objectNames[16] = "oCoinEffect";
global.__objectNames[17] = "black_tile";
global.__objectNames[18] = "oSystem";
global.__objectNames[19] = "oStore";
global.__objectNames[20] = "oPlayer_01_Buy";
global.__objectNames[21] = "oPlayer_01_Buy_Btn";
global.__objectNames[22] = "oPlayer_02_Buy";
global.__objectNames[23] = "oPlayer_02_Buy_Btn";
global.__objectNames[24] = "oPlayer_03_Buy";
global.__objectNames[25] = "oPlayer_03_Buy_Btn";
global.__objectNames[26] = "oOut_Btn";
global.__objectNames[27] = "oLeft";
global.__objectNames[28] = "oRight";
global.__objectNames[29] = "oTitle_01";
global.__objectNames[30] = "oTitle_02";


// create another array that has the correct entries
var len = array_length_1d(global.__objectDepths);
global.__objectID2Depth = [];
for( var i=0; i<len; ++i ) {
	var objID = asset_get_index( global.__objectNames[i] );
	if (objID >= 0) {
		global.__objectID2Depth[ objID ] = global.__objectDepths[i];
	} // end if
} // end for