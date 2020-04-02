counter -= 1;

if (counter <= 0)
{
	if (!instance_exists(foodObj))
	{
		instance_create_depth(x - 12, y + 86, 1, foodObj);
	}
	counter = 300;
}

if (counter <= 1) and !audio_is_playing(foodRespone) {
	audio_play_sound(foodRespone, 1, false)	
}
