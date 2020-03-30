//End the game
if (keyboard_check_pressed(vk_enter)) or gamepad_button_check_pressed(0, gp_start)
{
	game_end();
}
//Reset the game
if (keyboard_check_pressed(vk_escape) || gamepad_button_check_pressed(0, gp_select))
{
	game_restart();	
}