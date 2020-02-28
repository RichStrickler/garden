
draw_sprite(sprite_index, image_index, x, y)
draw_set_colour(c_white)


//tracker
draw_text(x, y - 50, "Hunger: " + string(hunger) + ", Energy: " + string(energy))
draw_text(x, y -30, "Hungry: " + string(hungry) + ", Tired: " + string(tired))
draw_text(x, y -10, "Carrying: " + string(carrying) + "HSP: " + string(hsp) + "VSP: " + string(vsp));


//Controls
draw_text(x, y + 50, "Controls: E to pick up, and Q to drop.");