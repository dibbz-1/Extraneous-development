with obj_textboxStore{
	obj_shopkeeper.talking=!(print_fin or pause);
}
if talking image_speed=1;
else{
	image_speed=0;
	image_index=0;
}
switch global.cutStep{
	case 1:
		create_store_text("log.shopOpt");
		global.cutStep++;
	break;
	case 3:
		instance_activate_object(obj_cameraManager);
		global.plrMove=true
		obj_player.image_alpha=0;
		fadeToRoom(rm001_testA,10,c_black,0,0);
		global.cutStep=0;
	break;
}