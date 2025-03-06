if bullets<20{
	instance_create_depth(irandom_range(150,300),30,target.depth-1,obj_enemyBulletTest);
	alarm[3]=13;
	bullets++
} else alarm[4]=50;