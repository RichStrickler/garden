
if (global.carrying = 1 and (keyboard_check_pressed(ord("R")) || (gamepad_button_check_pressed(0, gp_face2)))){
	creatureObj.eating = 1;
	global.carrying = 0;
}
	
