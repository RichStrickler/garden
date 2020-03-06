script_execute(characterInteraction);
draw_sprite(image_index, sprite_index, x, y);
if (debugCheck) {
	draw_set_color(c_black);
	draw_text(x + 22, y + 22, "Counter = " + string(counter));
	draw_set_color(c_white);
	draw_text(x + 20, y + 20, "Counter = " + string(counter));
}