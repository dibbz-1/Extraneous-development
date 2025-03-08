// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ajohnTurn(){
	switch ajohnAct{
		case "attack":
			randomize();
			ajohnAttPwr=irandom_range(20,40);
			global.fightingState=6
	}
}