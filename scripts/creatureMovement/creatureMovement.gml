

pathOne = path0
pathTwo = path1



if (number == 1) and (eating != 1) {



if (counterCreature == 0){

	
	if (path_index = -1){
		
		if (sleeping == 0){
			

			number = 1;

			if (number == 1){
				
				creatureSpeed = 3;
				path_start(pathOne,creatureSpeed,path_action_continue,0)
				creatureSpeed = 0;
				
			}
			else if (number == 2) {
				
				creatureSpeed = 3;
				path_start(pathTwo,creatureSpeed,path_action_continue,0)
				creatureSpeed = 0;

			}
			
			counterCreature = counterCreatureMax;
			
		}
		else if (sleeping == 1){
			
			if (energy == 100){
				
				sleeping = 0;
				counterCreature = counterCreatureMax;
				
			}
			else if (energy != 0){
				
			counterCreature = counterCreatureMax;
			
			}
		}
		
	}
	else{
		
		counterCreature = counterCreatureMax;
		
	}
	
}


else if (counterCreature != 0){
	
	counterCreature = counterCreature - 1;

	
}
}







