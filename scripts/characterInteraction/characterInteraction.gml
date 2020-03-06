#region Character and food interaction
//Allows the player to pick up the food
debugCheck = false;
helpCheck = false;
if (place_meeting(x + 1, y + 1, foodObj) and global.carrying != 1) || (place_meeting(x - 1, y -1, foodObj) and global.carrying != 1)
{
	speed = 0;
	
	if (keyboard_check(ord("E")) || gamepad_button_check_pressed(0, gp_face1))
	{
		global.carrying = 1;	
	}
	else
	{
		global.carrying = 0;
	}
}

//Allows the character to drop the item
if (keyboard_check_pressed(ord("Q")) || gamepad_button_check_pressed(0, gp_face3))
{
	global.carrying = 0;
}
	
if (global.carrying = 1)
{
	foodObj.x = x + 1;
	foodObj.y = y + 65;
	
}
if (keyboard_check_pressed(ord("`")) || gamepad_button_check_pressed(0, gp_select)){
	if (debugCheck == true){
		debugCheck = false;
	}
	else {
		debugCheck = true;
	}
}
if (keyboard_check_pressed(ord("h")) || gamepad_button_check_pressed(0, gp_start)){
	if (helpCheck == true){
		helpCheck = false;
	}
	else {
		helpCheck = true;
	}
}
#endregion