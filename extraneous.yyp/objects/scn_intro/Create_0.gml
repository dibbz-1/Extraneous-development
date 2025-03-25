global.plrMove = 0;
instance_create_layer(0,0,"Instances",obj_cutsceneManager);
create_text("log.intro");
obj_textbox.cutGliding=false;
counter=0;
counterb=0;
counterShake=10;
_x=0;
setup=true;
pwr=0;

function beebo_shake(shake_pwr, time){
	if setup{
		pwr=shake_pwr;
		_x=obj_player.x;
		counterShake=time;
		setup=false;
		_switch=1;
	}
	if round(pwr)!=0{
		counterShake--;
		if counterShake==0{
			pwr-=shake_pwr/10;
			_switch*=-1;
			if _switch==-1 obj_player.x=_x-pwr;
			if _switch==1 obj_player.x=_x+pwr;
			counterShake=time;
		}
	}
		
}
	