/// @description spawn worm bullets
if bullets<20{
	instance_create_depth(irandom_range(150,300),-200,0,obj_wormBullet);
	alarm[5]=13;
	bullets++
} else alarm[4]=50;
