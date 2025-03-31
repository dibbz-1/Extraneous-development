global.plrMove = 0;
instance_create_layer(0,0,"Instances",obj_cutsceneManager);
global.cutStep=8;

counter=0;
counterb=0;
counterShake=10;
_x=0;
setup=true;
pwr=0;
obj_cameraManager.gliding=1;

function char_shake(char, shake_pwr, time, withCam){
	if setup{
		pwr=shake_pwr;
		_x=char.x;
		_xcam=obj_cameraManager.x;
		counterShake=time;
		setup=false;
		_switch=1;
		if !withCam obj_cameraManager.gliding=0; 
	}
	if round(pwr)!=0{
		counterShake--;
		if counterShake==0{
			pwr-=shake_pwr/10;
			_switch*=-1;
			if _switch==-1 char.x=_x-pwr;
			if _switch==1 char.x=_x+pwr;
			if withCam{
				if _switch==-1 obj_cameraManager.x=_xcam-pwr/2;
				if _switch==1 obj_cameraManager.x=_xcam+pwr/2;
			}
			counterShake=time;
		}
	} else obj_cameraManager.gliding=1;
		
}
	