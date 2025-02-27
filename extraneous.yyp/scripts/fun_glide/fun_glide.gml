// higher fac makes obj stop slower, fac of 1 makes obj snap to position
// 
function glide_sin(_xTarg,_yTarg,_fac){
	x+=(_xTarg-x)/_fac;
	y+=(_yTarg-y)/_fac;
}
function cam_glide(_xTarg,_yTarg,_wTarg,_hTarg,_fac){
	xPos+=(_xTarg-xPos)/_fac;
	yPos+=(_yTarg-yPos)/_fac;
	width+=(_wTarg-width)/_fac;
	height+=(_hTarg-height)/_fac;
}
//function size_glide_const(_preX,_preY,_preW,_preH,_xTarg,_yTarg,_wTarg,_hTarg,_fac){
//	xPos+=(_xTarg-_preX)/_fac;
//	yPos+=(_yTarg-_preY)/_fac;
//	width+=(_wTarg-_preW)/_fac;
//	height+=(_hTarg-_preH)/_fac;
//}
//higher fac makes obj glide slower, fac of 1 makes obj snap to position.
function glide_lin(_preX,_preY,_xTarg,_yTarg,_fac){
	x+=(_xTarg-_preX)/_fac;
	y+=(_yTarg-_preY)/_fac;
}	