
draw_sprite(sprite_index, image_index, x, y);
if (debugCheck) {
	draw_set_color(c_black);
	draw_text(x+2, y -8, "Carrying: " + string(global.carrying) + " HSP: " + string(hsp) + " VSP: " + string(vsp));
	draw_set_color(c_white);
	draw_text(x, y -10, "Carrying: " + string(global.carrying) + " HSP: " + string(hsp) + " VSP: " + string(vsp));
}