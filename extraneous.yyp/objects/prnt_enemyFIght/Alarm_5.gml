/// @description spawn worm bullets
if bullets<10{
	instance_create_depth(irandom_range(150,300),300,0,obj_wormBullet);
	alarm[5]=20;
	bullets++
} else alarm[4]=50;
