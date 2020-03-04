#region Get player input and calculate movement
key_left = keyboard_check(ord("A")) || keyboard_check(vk_left) || (gamepad_axis_value(0, gp_axislh) < 0);
key_right = keyboard_check(ord("D")) || keyboard_check(vk_right) || (gamepad_axis_value(0, gp_axislh) > 0);
key_up = keyboard_check(ord("W")) || keyboard_check(vk_up) || (gamepad_axis_value(0, gp_axislv) < 0);
key_down = keyboard_check(ord("S")) || keyboard_check(vk_down) || (gamepad_axis_value(0, gp_axislv) > 0);


//Calculate Movement
var move = key_right - key_left;
var vmove = key_down - key_up;
hsp = move * walkSpeed;
vsp = vmove * walkSpeed;
var food = instance_nearest(x, y, foodObj)
#endregion

#region Horizontal Collision and Vertical Collision
if (place_meeting(x + hsp, y, food))
{
	//sign returns a 1 or -1 depending if the variable given is positive or negative respectively
	while(!place_meeting(x + sign(hsp), y, food))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;


if (place_meeting(x, y + vsp, food) and !global.carrying)
{
	//sign returns a 1 or -1 depending if the variable given is positive or negative respectively
	while(!place_meeting(x, y + sign(vsp), food))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;

#endregion

#region Character and food interaction
//Allows the player to pick up the food
if (place_meeting(x + 1, y + 1, food) and global.carrying != 1) || (place_meeting(x - 1, y -1, food) and global.carrying != 1)
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
	food.x = x + 1;
	food.y = y + 65;
	
}
#endregion

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