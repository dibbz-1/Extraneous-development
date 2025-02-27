/// @description 
// Enter state
if (state == 0) {
	timer++;
	
	// Change room
	if (timer >= duration) {
		obj_player.x = playerx;
		obj_player.y = playery;
		room_goto(targetRoom);

		// Set state
		state = 1;
	}
}

// Exit state
else if (state == 1) {

	timer--;
	if enemy!=spr_none{
		obj_fightmanager.enemy=enemy;
	}
	
	// Destroy
	if (timer <= 0) {
		instance_destroy();
	}
}
	
// Set alpha
alpha = timer / duration

// TYSM TO https://www.youtube.com/watch?v=WLQiVE_k5SA FOR THE ROOM TRANSITIONS