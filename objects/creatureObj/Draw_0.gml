draw_sprite(sprite_index, image_index, x, y)


//tracker
draw_set_colour(c_black)
draw_text(x+2, y -48, "Hunger: " + string(hunger) + ", Energy: " + string(energy) + ", Eating: " + string(eating));
draw_text(x+2, y -28, "Hungry: " + string(hungry) + ", Tired: " + string(tired) + ", EatingCounter: " + string(eatingCounter));
draw_set_colour(c_white)
draw_text(x, y -50, "Hunger: " + string(hunger) + ", Energy: " + string(energy) + ", Sleeping " + string(sleeping));
draw_text(x, y -30, "Hungry: " + string(hungry) + ", Tired: " + string(tired) + ", Creature Counter " + string(counterCreature));