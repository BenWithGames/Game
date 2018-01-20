/// @description Insert description here
// You can write your code in this editor

if (isTalking == false) {
	if (keyboard_check(ord("D")) && !place_meeting(x + 2, y, obj_hitbox_wall)) x += 2;
	if (keyboard_check(ord("A")) && !place_meeting(x - 2, y, obj_hitbox_wall)) x -= 2;
	if (keyboard_check(ord("W")) && !place_meeting(x, y - 2, obj_hitbox_wall)) y -= 2;
	if (keyboard_check(ord("S")) && !place_meeting(x, y + 2, obj_hitbox_wall)) y += 2;
}