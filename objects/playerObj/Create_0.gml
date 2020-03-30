//Horizontal and Vertical speed
hsp = 0;
vsp = 0;

//Normal walking speed
walkSpeed = 5.5;

playerObj.carrying = 0;

//Set controller deadzone
gamepad_set_axis_deadzone(0, 0.5);

hungermax = 100;
energymax = 100;
countermax = 40;

hunger = hungermax;
energy = energymax;
counter = countermax;

hungry = 0;
tired = 0;

depth = -1;

tilemap = layer_tilemap_get_id("Collision");