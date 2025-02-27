//// @description 
// Change room
if place_meeting(x,y,obj_player) && !instance_exists(obj_rmTrans) && door_locked!=1 {
	// Target room
	var _targetRoom = target_rm;
	
	
	
	// Fade
	fadeToRoom(_targetRoom, 10, c_black, target_x, target_y);
} else if place_meeting(x,y,obj_player) && !instance_exists(obj_textbox) && door_locked==1{
	//stress bug caused by trying to hold button to enter door while accepting dialogue.
	obj_player.x-=obj_player.xSpd
	obj_player.y-=obj_player.ySpd
	create_text("log_locked")
}
//depth
depth = obj_player.depth + 1;