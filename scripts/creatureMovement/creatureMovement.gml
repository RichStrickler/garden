creatureSpeed = 3;

pathOne = path0
pathTwo = path1

number = random_range(1,2)

if (number == 1) and (eating != 1) {
	
	path_start(pathOne,creatureSpeed,path_action_continue,0)
	
}
else if (number == 2) and (eating != 1) {
	
	path_start(pathTwo,creatureSpeed,path_action_continue,0)

}






