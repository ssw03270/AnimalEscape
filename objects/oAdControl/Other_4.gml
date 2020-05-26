/// @description Insert description here
// You can write your code in this editor

if(os_type == os_android){
	app_id = "ca-app-pub-9082043936834188~9393286478";
	banner_id = "ca-app-pub-9082043936834188/5996966944";
	interstitial_id = "ca-app-pub-9082043936834188/8431558595";
	rewarded_id = "ca-app-pub-9082043936834188/3972249465";
	
	GoogleMobileAds_Init(interstitial_id, app_id);
	GoogleMobileAds_LoadInterstitial();
	interstitial_loaded	= false;

	GoogleMobileAds_LoadRewardedVideo(rewarded_id);
	rewarded_loaded = false;
	rewarded_viewed = false;
}



//GoogleMobileAds_UseTestAds(1, "E220DA6B84E47DD04AADB809A1803DE8");
