if obj_fightmanager.currentTurn==1 global.fightingState++;
else{
	global.fightingState=5; 
	obj_fightmanager.currentTurn++;
}
alarmStarted=false;