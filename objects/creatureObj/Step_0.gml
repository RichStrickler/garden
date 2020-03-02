//counter
if (counter == 0){
	if ((energy == 0) && (hunger == 0)){
		
		counter = countermax;
		
	}
	else {
		
		energy = energy - 5;
		hunger = hunger - 5;
	
		counter = countermax;
		
	}
}
else if (counter > 0 ){
	
	counter = counter - 1;
	
}

//hunger
if (hunger < 30){
	
	hungry = 1;
	
}
else {
	
	hungry = 0;
	
}
if (hunger > 100){
	
	hunger = 100;
}

//energy
if (energy < 30){
	
	tired = 1;
	
}
else {
	
	tired = 0;
	
}

//Feeds the creature
if (global.carrying = 1 and place_meeting(x, y, foodObj))
{
	hunger += 30;
	global.carrying = 0;
	instance_destroy(instance_nearest(x, y, foodObj));
}
	

