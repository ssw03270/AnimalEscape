/// @description Insert description here
// You can write your code in this editor

if(os_type == os_android){
	GoogleMobileAds_RemoveBanner();
	GoogleMobileAds_AddBanner(oAdControl.banner_id, GoogleMobileAds_Smart_Banner);
}