confirm_key_pressed = keyboard_check_pressed(ord("Z"));

if confirm_key_pressed && place_meeting(x,y,obj_player) && !instance_exists(obj_textbox){
	
	create_text(text_id);
	
	
}
