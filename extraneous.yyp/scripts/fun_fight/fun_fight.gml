// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
//function start_fight(_enemy){
//	obj_cameraManager.gliding=5;
	
//	switch _enemy{
//		case "test":
//			fadeToRoom(rm_fight,10,c_black,0,0,spr_enemytest)
//	}

//}
function fight_check(spec=0){
	if spec==0{
		for (var i=0; i<3; i++)
		{
			//
			randomize();
			var rand=round(random(2));
			show_debug_message(rand);
			if rand==0{
				//add bug to enemy array
				if !array_contains(global.enemy,"Bug A") array_push(global.enemy,"Bug A");
				else if !array_contains(global.enemy,"Bug B") array_push(global.enemy,"Bug B");
				else array_push(global.enemy,"Bug C");
			} else if rand==1{
				//add worm to enemy array
				if !array_contains(global.enemy,"Worm A") array_push(global.enemy,"Worm A");
				else if !array_contains(global.enemy,"Worm B") array_push(global.enemy,"Worm B");
				else array_push(global.enemy,"Worm C");
			}
		}
		array_delete(global.enemy,0,1);
		show_debug_message(global.enemy);
	}
	else global.enemy[0]=spec
	fight_init();
}
function fight_init(){
	global.fightingState=1;	
	instance_create_depth(0,0,0,gpx_fight);
	audio_stop_all();
	global.mus=audio_play_sound(snd_fightStart,1,0);
}