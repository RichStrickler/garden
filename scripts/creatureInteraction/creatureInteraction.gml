if (eating == 1)
{
    path_speed = 0;
    foodObj.x = creatureObj.x;
    foodObj.y = creatureObj.y + 10;
}
else if (eating == 0){
	path_speed = 3;
}

if (eatingCounter > 0) and (eating == 1)
    {
        eatingCounter -= 1;
        hunger += 1;
        if (eatingCounter == 0) 
        {
            eating = 0;
            eatingCounter = 30;
            instance_destroy(foodObj);
        }
   }