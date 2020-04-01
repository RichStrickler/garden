#region Character and food interaction
//Allows the player to pick up the food
if (place_meeting(x + 1, y + 1, foodObj) and playerObj.carrying != 1) || (place_meeting(x - 1, y -1, foodObj) and playerObj.carrying != 1)
{
	speed = 0;
	
	if (keyboard_check(ord("E")) || gamepad_button_check_pressed(0, gp_face1))
	{
		playerObj.carrying = 1;
		creatureObj.eating = 0;
	}
	else
	{
		playerObj.carrying = 0;
	}
}

//Allows the character to drop the item
if (keyboard_check_pressed(ord("Q")) || gamepad_button_check_pressed(0, gp_face3))
{
	playerObj.carrying = 0;
}

//Actually allows the food to move
if (playerObj.carrying = 1)
{
	instance_nearest(x, y, foodObj);
	if (hsp > 0)
	{
		foodObj.x = x + 10;
		foodObj.y = y;
	}
	else if (hsp < 0)
	{
		foodObj.x = x - 10;
		foodObj.y = y;
	}
	else if (vsp > 0)
	{
		foodObj.x = x;
		foodObj.y = y + 10;
		foodObj.depth = -2;
	}
	else if (vsp < 0)
	{
		foodObj.x = x;
		foodObj.y = y - 10;
		foodObj.depth = 1;
	}
	
}
#endregion

if (gamepad_button_check_pressed(0, gp_face1) and place_meeting(x, y, creatureObj))
{
	creatureObj.path_speed = 0;
	creatureObj.sleeping = 1;
}