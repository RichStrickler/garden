
if (playerObj.carrying = 1 and (keyboard_check_pressed(ord("R")) || (gamepad_button_check_pressed(0, gp_face2)))){
	//instance_destroy(instance_nearest(x, y, foodObj));
	//creatureObj.hunger = creatureObj.hunger + 30;
	creatureObj.eating = 1;
	playerObj.carrying = 0;
	
	if (creatureObj.eating == 1)
	{
		audio_play_sound(eatingSound, 1, false);
	}
	else 
	{
		audio_stop_sound(eatingSound);
	}
}
	
