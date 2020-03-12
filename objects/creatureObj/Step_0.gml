
creatureInteraction();

//creatureMovement();



//counter
if (counter == 0){
	if ((energy == 0) ){
		
		if (hunger == 0){
			
			counter = countermax;
			
		}
		else {
			
			hunger = hunger - 5;
			counter = countermax;
			
		}
		
	}
	else if (hunger == 0){
		if (energy == 0){
			
			counter = countermax;
			
		}
		else {
			
		 energy = energy - 5;
		 counter = countermax;
			
		}
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
	sleeping = 1;
	
}
else {
	sleeping = 0;
	tired = 0;
	
}



//creature brain



pathOne = path0
pathTwo = path1




if (counterCreature == 0){
		
	if (sleeping == 0){
		
			if (path_index == -1){
			

				number = 1

				if (number == 1){
				
					creatureSpeed = 3;
					path_start(pathOne,creatureSpeed,path_action_stop,0)
					creatureSpeed = 0;
					counterCreature = counterCreatureMax;
				
				}
				else if (number == 2) {
				
					creatureSpeed = 3;
					path_start(pathTwo,creatureSpeed,path_action_stop,0)
					creatureSpeed = 0;
					counterCreature = counterCreatureMax;

				}	
			}
			else{
				
				counterCreature = counterCreatureMax;
				
			}
		}
	else if (sleeping == 1){
			
		if (energy == 100){
				
			sleeping = 0;
			counterCreature = counterCreatureMax;
				
		}
		else if (energy <= 30){
				
			counterCreature = counterCreatureMax;
			
		}
	}
}

else if (counterCreature != 0){
	
	counterCreature = counterCreature - 1;
	
}










