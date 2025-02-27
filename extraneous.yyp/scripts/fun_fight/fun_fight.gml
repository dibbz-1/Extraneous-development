// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function start_fight(_enemy){
	obj_cameraManager.gliding=5;
	
	switch _enemy{
		case "test":
			fadeToRoom(rm_fight,10,c_black,0,0,spr_enemytest)
	}

}