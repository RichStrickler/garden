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

//energy
if (energy < 30){
	
	tired = 1;
	
}
else {
	
	tired = 0;
	
}
