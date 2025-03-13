draw_self();
//draw damage
if hitSpawn==1{
	draw_text_transformed_color(txtX,txtY,damage,.3,.3,0,c_red,c_red,c_red,c_red,tAlpha);
	txtX+=xBounce;
	txtY+=yBounce;
	tAlpha-=0.05
	if tAlpha==0 hitSpawn=0
	yBounce+=0.3
}