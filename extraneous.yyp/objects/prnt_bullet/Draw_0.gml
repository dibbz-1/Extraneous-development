draw_self();
if sprite_index==spr_bulletBrown{
	if !visible_in_viewport(0) && !seen draw_sprite(spr_warning,0,x,180);
	else seen=true;
}
