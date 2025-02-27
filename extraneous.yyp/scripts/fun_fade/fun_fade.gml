function fadeToRoom(_room, _dur, _color, _targX, _targY, _enemy=spr_none) {

	// Args

	// Create
	var _inst = instance_create_depth(0, 0, 0, obj_rmTrans);

	// Set properties
	with (_inst) {
		targetRoom = _room;
		duration = _dur;
		color = _color;
		playerx = _targX;
		playery = _targY;
		enemy = _enemy;
	}


}

function fight_trans(_char,_dur,_color,_enemy){
	var _rm;
	switch _char{
		case "guy":
			_rm=rm_fight;
			
		
	}
	var _inst = instance_create_depth(0, 0, 0, obj_fightTrans);

	// Set properties
	with (_inst) {
		targetRoom = _rm;
		duration = _dur;
		color = _color;
		enemy = _enemy;
	}
	
}

