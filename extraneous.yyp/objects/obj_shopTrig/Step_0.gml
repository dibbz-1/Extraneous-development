var confirm = keyboard_check_pressed(ord("Z"));

if place_meeting(x,y,obj_player) and confirm{
	
	global.plrMove=false;
	set_player_pos();
	fadeToRoom(rm_shopTest,10,c_black,0,0)
}