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


//Get player input
key_left = keyboard_check(ord("A")) || keyboard_check(vk_left);
key_right = keyboard_check(ord("D")) || keyboard_check(vk_right);
key_up = keyboard_check(ord("W")) || keyboard_check(vk_up);
key_down = keyboard_check(ord("S")) || keyboard_check(vk_down);

//Calculate Movement
var move = key_right - key_left;
var vmove = key_down - key_up;
hsp = move * walkSpeed;
vsp = vmove * walkSpeed;
var food = instance_nearest(x, y, foodObj)

//Horizontal Collision
if (place_meeting(x + hsp, y, food))
{
	//sign returns a 1 or -1 depending if the variable given is positive or negative respectively
	while(!place_meeting(x + sign(hsp), y, food))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;

//Vertical Collision
if (place_meeting(x, y + vsp, food) and !carrying)
{
	//sign returns a 1 or -1 depending if the variable given is positive or negative respectively
	while(!place_meeting(x, y + sign(vsp), food))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;

if (place_meeting(x + 1, y + 1, food) and carrying != 1)
{
	speed = 0;
	
	if (keyboard_check(ord("E")))
	{
		carrying = 1;	
	}
	else
	{
		carrying = 0;
	}
}

if (keyboard_check_pressed(ord("Q")))
{
	carrying = 0;
}
	
if (carrying = 1)
{
	food.x = x + 1;
	food.y = y + 65;
	
}

