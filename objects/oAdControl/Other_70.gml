/// @description Insert description here
// You can write your code in this editor

var _id = async_load[? "id"];
if(_id == GoogleMobileAds_ASyncEvent){
	var ident = async_load[? "type"];
	
	switch(ident){
		case "banner_load" :
			if(async_load[? "loaded"] == 1){
				GoogleMobileAds_MoveBanner(display_get_gui_width()/2 - GoogleMobileAds_BannerGetWidth() / 2, display_get_gui_height() - GoogleMobileAds_BannerGetHeight());
				//show_message_async(display_get_gui_height() - GoogleMobileAds_BannerGetHeight());
				///show_message_async("Banner loaded");
			}
		break;
			
		case "interstitial load":
			if(async_load[? "loaded"] == 1){
				interstitial_loaded = true;
				//show_message_async("Interstitial loaded");
			}
		break;
			
		case "rewardedvideo_adloaded" :
			rewarded_loaded = true;
			//show_message_async("Rewarded loaded");
		break;
			
		case "rewardedvideo_adopened" :
			rewarded_viewed = false;
			//show_message_async("Rewarded opened");
		break;
		
		case "rewardedvideo_videostarted" : 
			//show_message_async("Rewarded started");
		break;
		
		case "rewardedvideo_videowatched" :
			rewarded_viewed = true;
			//show_message_async("Rewarded watched");
		break;
		
		case "rewardedvideo_adlosed" :
			if(rewarded_viewed == false){
				//show_message_async("Rewarded video closed before ad finished");
			}
		break;
			
	}
	
}