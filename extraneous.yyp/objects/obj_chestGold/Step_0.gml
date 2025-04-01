var confirm = keyboard_check_pressed(ord("Z"));
if place_meeting(x,y,obj_player)&&confirm&&!locked&&image_index=0{
	image_index=1;
	global.gold+=gold;
	global.goldChest=gold;
	create_text("gold chest");
	
}