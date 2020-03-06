//Controls
if (keyboard_check_pressed(ord("H")))
{
	draw_set_color(c_black)
	draw_text(x+2, y+2, "E/X to pick up \nQ/Square to drop \nESC/Start to reset \nR/Circle to feed the creature")
	draw_set_color(c_white)
	draw_text(x, y, "E/X to pick up \nQ/Square to drop \nESC/Start to reset \nR/Circle to feed the creature")
}