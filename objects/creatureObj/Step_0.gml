//creatureMovement();
creatureInteraction();


//hunger
if (hungerCounter == 0){
	
	hunger = hunger - 5;
	hungerCounter = hungerCounterMax;
	
}
else if (hungerCounter != 0 ){
	
	hungerCounter = hungerCounter - 1;
	
}

//happiness 
if (happinessCounter = 0){
	if ((hunger >= 75)&&(energy >=75)){
		happiness = happiness + 1;
		happinessCounter = happinessCounterMax;
	}
	else if ((hunger <= 25)&&(energy <=25)){
		happiness = happiness - 1;
		happinessCounter = happinessCounterMax;
	}
	else {
		happinessCounter = happinessCounterMax;
	}
}
else if (happinessCounter != 0){
	happinessCounter = happinessCounter - 1;
}

//sleeping
if (sleeping == 0){
	if (energyCounter == 0){
		if (energy > 0){
			energy = energy - 5;
			energyCounter = energyCounterMax;
		}
		else if (energy = 0){
			energyCounter = energyCounterMax;
		}
	}
	else if (energyCounter != 0 ){
	
		energyCounter = energyCounter - 1;
	
	}
}
else if (sleeping == 1){
	image_speed = 2;
	sprite_index = sNeutralSleep;
	if (energyCounter == 0){
		if (energy == energymax){
		
			sleeping = 0;
			energyCounter = energyCounterMax;
		
		}
		else if (energy != energymax){
			 energy = energy + 5;
			 energyCounter = energyCounterMax;
		}
	}
	else if (energyCounter != 0 ){
	
		energyCounter = energyCounter - 1;
	
	}
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

if (hunger < 0){

	hunger = 0

}


//energy
if (energy < 30){
	
	tired = 1;

	
}
else {

	tired = 0;
	
}
if (energy > 100){
	
	energy = 100;
	
}

if (energy < 0){

	energy = 0;

}

//happy/unhappy

if (happiness >= 500){
	
	happy = 1;

	
}
else if (happiness <= -500) {

	unhappy = 0;
	
}
if (happiness > happinessmax){
	
	happiness = 1000;
	
}

if (happiness < happinessmin){

	happiness = -1000;

}


//creature brain

pathOne = path0
pathTwo = path1



if (counterCreature == 0){
		
	if (sleeping == 0){
		
			if (path_index == -1){
			
				if (tired == 0){
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
				else if (tired == 1){
						
					sleeping = 1;
					counterCreature = counterCreatureMax
						
				}
			}
			else{
				
				counterCreature = counterCreatureMax;
				
			}
		}
	else if (sleeping == 1){
			
		counterCreature = counterCreatureMax;
		
	}
}

else if (counterCreature != 0){
	
	counterCreature = counterCreature - 1;
	
}


if (direction >= 0) and (direction < 90) and (path_speed > 0)
{
	image_speed = 1;
	sprite_index = sNeutralRight;
}
else if (direction >= 90) and (direction < 180) and (path_speed > 0)
{
	image_speed = 1;
	sprite_index = sNeutralBack;
}
else if (direction >= 180) and (direction < 270) and (path_speed > 0)
{
	image_speed = 1;
	sprite_index = sNeutralLeft;
}
else if (direction >= 270) and (direction < 360) and (path_speed > 0)
{
	image_speed = 1;
	sprite_index = sNeutralRight;
}
else sprite_index = sNeutralIdle;








