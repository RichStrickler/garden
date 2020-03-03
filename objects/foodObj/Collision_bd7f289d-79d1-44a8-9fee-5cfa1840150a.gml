
if (global.carrying = 1 and (keyboard_check_pressed(ord("R")) || (gamepad_button_check_pressed(0, gp_face2)))){
	instance_destroy(instance_nearest(x, y, foodObj));
	creatureObj.hunger = creatureObj.hunger + 30;
	global.carrying = 0;
}
	
