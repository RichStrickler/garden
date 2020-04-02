//Player Walk Sound
if vsp != 0 and !audio_is_playing(walkingSound) {
	audio_play_sound(walkingSound, 1, false)	
}

if hsp != 0 and !audio_is_playing(walkingSound) {
	audio_play_sound(walkingSound, 1, false)	
}

//Collision Sound
if collision_circle(x, y, 24, treeObj, false, true) and !audio_is_playing(collisionSound) {
	audio_play_sound(collisionSound, 1, false)	
}
if collision_circle(x, y, 24, creatureObj, false, true) and !audio_is_playing(collisionSound) {
	audio_play_sound(collisionSound, 1, false)	
}

characterMovement();
characterInteraction();

#region Unused player eating mechanic
//Allows you to eat the food to replenish hunger
/*if (playerObj.carrying = 1 and (keyboard_check_pressed(ord("R")) || (gamepad_button_check_pressed(0, gp_face2))))
{
	instance_destroy(instance_nearest(x, y, foodObj));
	hunger += 30;
	playerObj.carrying = 0;
}*/

#endregion

#region Tileset Collision

var colliding = false

//Horizontal Collision
if (hsp > 0) bbox_side = bbox_right; else bbox_side = bbox_left;
if (tilemap_get_at_pixel(tilemap, bbox_side + hsp, bbox_top) != 0) or (tilemap_get_at_pixel(tilemap, bbox_side + hsp, bbox_bottom) != 0)
{
	if (hsp > 0) x = x - (x mod 64) + 63 - (bbox_right - x);
	else x = x - (x mod 64) - (bbox_left - x);
	hsp = 0;	
	colliding = true
}
//Vertical Collision
if (vsp > 0) bbox_side = bbox_bottom; else bbox_side = bbox_top;
if (tilemap_get_at_pixel(tilemap, bbox_left, bbox_side + vsp) != 0) or (tilemap_get_at_pixel(tilemap, bbox_right, bbox_side + vsp) != 0)
{
	if (vsp > 0) y = y - (y mod 64) + 63 - (bbox_bottom - y);
	else y = y - (y mod 64) - (bbox_top - y);
	vsp = 0;
	colliding = true
}

#endregion