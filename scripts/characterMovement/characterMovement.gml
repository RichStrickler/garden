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

x = x + hsp;
y = y + vsp;
#endregion

#region Determine what sprite to display

if (hsp > 0)
{
	image_speed = 2;
	sprite_index = sPlayerRight;
}
else if (hsp < 0)
{
	image_speed = 2;
	sprite_index = sPlayerLeft;
}
else if (vsp < 0)
{
	image_speed = 2;
	sprite_index = sPlayerBack;
}
else if (vsp > 0)
{
	image_speed = 2;
	sprite_index = sPlayerFront;
}

else {sprite_index = sPlayerIdle};

#endregion
