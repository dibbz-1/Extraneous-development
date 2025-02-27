if !instance_exists(obj_textbox) && !instance_exists(obj_rmTrans) && global.plrMove{
	//get keys
	var rightKey = keyboard_check(vk_right);
	var leftKey = keyboard_check(vk_left);
	var upKey = keyboard_check(vk_up);
	var downKey = keyboard_check(vk_down);
	
	//var attackKey = keyboard_check_pressed(ord("C"));

	//calculate X&Y
	xSpd = (rightKey - leftKey)*mvSpd;
	ySpd = (downKey - upKey)*mvSpd;

	//col
	if place_meeting(x+xSpd,y,obj_colBox){
		xSpd=0;	
	}
	if place_meeting(x,y+ySpd,obj_colBox){
		ySpd=0;
	}

	//execute movement
	x+=xSpd;
	y+=ySpd;
	
	//attack
	//if attackKey{
	//	instance_create_depth(x,y,depth,obj_beebSword);
	//}
		

	//depth sorting
}