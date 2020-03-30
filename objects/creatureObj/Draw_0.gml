draw_sprite(sprite_index, image_index, x, y)


//tracker
draw_set_colour(c_black)
draw_text(x+2, y -48, "Hunger: " + string(hunger) + ", Energy: " + string(energy) + ", Eating: " + string(eating) + ", Sleeping: " + string(sleeping));
draw_text(x+2, y -28, "Hungry: " + string(hungry) + ", Tired: " + string(tired) + ", Eating Counter: " + string(eatingCounter) + ", Sleeping Counter: " + string(counterCreature));
draw_set_colour(c_white)
draw_text(x, y -50, "Hunger: " + string(hunger) + ", Energy: " + string(energy) + ", Eating: " + string(eating) + ", Sleeping: " + string(sleeping));
draw_text(x, y -30, "Hungry: " + string(hungry) + ", Tired: " + string(tired) + ", Eating Counter: " + string(eatingCounter) + ", Sleeping Counter: " + string(counterCreature) +  " " + string(direction));