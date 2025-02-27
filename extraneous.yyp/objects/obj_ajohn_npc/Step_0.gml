confirm_key_pressed = keyboard_check_pressed(ord("Z"));

if confirm_key_pressed && place_meeting(x,y,obj_player) && !instance_exists(obj_textbox) && interact{
	
	instance_create_layer(obj_ajohn_npc.x,obj_ajohn_npc.y,"characters",scn_ajohnTest);

	
}

//face_player
