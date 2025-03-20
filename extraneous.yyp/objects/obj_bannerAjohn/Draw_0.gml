if !instance_exists(obj_fightmanager) instance_destroy();

//self
draw_sprite(spr_bannerAjohn,0,x,y);

//text
draw_text_ext_transformed(x+10,y+30,"HP",5,100,0.2,0.2,0);
draw_text_ext_transformed(x+20,y+30,obj_fightmanager.ajohn_hp,5,100,0.2,0.2,0);