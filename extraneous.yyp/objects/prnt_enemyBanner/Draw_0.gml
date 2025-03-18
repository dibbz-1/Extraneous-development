//self
draw_self();

//text
if !instance_exists(inst) instance_destroy();
else{
	draw_text_ext_transformed(x+20,y+3,"HP",5,100,0.2,0.2,0);
	draw_text_ext_transformed(x+30,y+3,inst.enemy_hp,5,100,0.2,0.2,0);
	draw_text_ext_transformed(x+25,y-5,inst.enemy,5,100,0.2,0.2,0);
}
