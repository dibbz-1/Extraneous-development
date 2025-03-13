/// @description end attack
if turn=enemyCount-1{
	global.fightingState=3;
} else{
	enemyTurn++; 
}
alarmStarted=false;
bullets=0;