/// @description 
// Enter state
if (state == 0) {
	timer++;
	
	// Change room
	if (timer >= duration) {
		obj_player.x = playerx;
		obj_player.y = playery;
		room_goto(targetRoom);

		state++;
	}
}
if state==3{
	if !global.fightingState==5 state++;
}
// Exit state
else if (state == 2) {

	timer--;
	
	// Destroy
	if (timer <= 0) {
		instance_destroy();
	}
}
	
// Set alpha
alpha = timer / duration
