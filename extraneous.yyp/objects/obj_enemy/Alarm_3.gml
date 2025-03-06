if bullets<10{
	instance_create_depth(irandom_range(obj_player.x-10,obj_player.x+10),30,obj_player.depth-1,obj_enemyBulletTest);
	alarm[3]=20;
	bullets++
} else alarm[4]=50;