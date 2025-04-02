var quit = keyboard_check_pressed(vk_escape);
var info = keyboard_check_pressed(vk_tab);

if quit{
	game_end();
}

if info{
	if !instance_exists(obj_playerInfo){
		instance_create_depth(obj_player.x-400,obj_player.y-30,obj_player.depth+1,obj_playerInfo);
		global.plrMove=false;
		with obj_player{
			sprite_index=spr_beebo_forward;
			image_speed=0;
			image_index=0;
		}
	}
	else{
		with obj_playerInfo gliding=1;
		global.plrMove=true;
	}
}