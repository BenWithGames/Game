/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(alpha);


draw_rectangle_colour(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);

if (alpha >= 0 && fadeFromBlack == true) {
	alpha -= .002;
} else if (alpha <= 0 && fadeFromBlack == false) {
	alpha += .002;
}

draw_set_alpha(1);
