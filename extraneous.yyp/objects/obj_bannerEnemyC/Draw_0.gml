//self
draw_sprite(spr_bannerEnemy,0,x,y);

//text
draw_text_ext_transformed(x-40,y-30,"HP",5,100,0.2,0.2,0);
draw_text_ext_transformed(x-30,y-30,obj_enemyC.enemy_hp,5,100,0.2,0.2,0);
draw_text_ext_transformed(x-40,y-40,obj_enemyC.enemy,5,100,0.2,0.2,0);