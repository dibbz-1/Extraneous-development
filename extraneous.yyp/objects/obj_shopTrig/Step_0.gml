var confirm = keyboard_check_pressed(ord("Z"));

if place_meeting(x,y,obj_player) and confirm{
	audio_stop_all();
	global.mus=audio_play_sound(mus_shop,1,0);
	instance_deactivate_object(obj_cameraManager);
	global.plrMove=false;
	
	fadeToRoom(rm_shopTest,10,c_black,0,0)
}