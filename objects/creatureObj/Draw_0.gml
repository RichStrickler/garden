
draw_sprite(sprite_index, image_index, x, y)


//tracker
draw_set_colour(c_black)
draw_text(x+2, y -48, "Hunger: " + string(hunger) + ", Energy: " + string(energy));
draw_text(x+2, y -28, "Hungry: " + string(hungry) + ", Tired: " + string(tired));
draw_set_colour(c_white)
draw_text(x, y -50, "Hunger: " + string(hunger) + ", Energy: " + string(energy));
draw_text(x, y -30, "Hungry: " + string(hungry) + ", Tired: " + string(tired));

