/// @description spawn bug bullets
if bullets<20{
	instance_create_depth(irandom_range(150,300),30,0,obj_bugBullet);
	alarm[3]=13;
	bullets++
} else alarm[4]=50;