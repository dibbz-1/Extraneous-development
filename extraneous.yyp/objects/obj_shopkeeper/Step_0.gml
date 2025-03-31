with obj_textbox{
	obj_shopkeeper.talking=!(print_fin or pause);
}
if talking image_speed=1;
else{
	image_speed=0;
	image_index=0;
}
switch global.cutStep{
	case 1:
		create_text("log.shopOpt");
		global.cutStep++;
	break;
}