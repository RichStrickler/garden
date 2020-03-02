counter -= 1;

if (counter <= 0)
{
	if (!instance_exists(foodObj))
	{
		instance_create_depth(x, y, -1, foodObj);
	}
	counter = 300;
}
