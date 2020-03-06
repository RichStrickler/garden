script_execute(characterMovement);
script_execute(characterInteraction);

#region Unused player eating mechanic
//Allows you to eat the food to replenish hunger
/*if (global.carrying = 1 and (keyboard_check_pressed(ord("R")) || (gamepad_button_check_pressed(0, gp_face2))))
{
	instance_destroy(instance_nearest(x, y, foodObj));
	hunger += 30;
	global.carrying = 0;
}*/

#endregion

//Reset the game
if (keyboard_check_pressed(vk_escape) || gamepad_button_check_pressed(0, gp_start))
{
	game_restart();	
}
