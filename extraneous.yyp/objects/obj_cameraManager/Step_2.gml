if focus=="player"{
	x=obj_player.x+xPos;
	y=obj_player.y+yPos;
}
if focus=="global"{
	x=xPos;
	y=yPos;
}
camera_set_view_size(view_camera[0],width,height);