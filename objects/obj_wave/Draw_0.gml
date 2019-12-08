draw_set_alpha(alpha);
draw_sprite(spr_wave, 0, self.x, self.y);
if (alpha > 0 && isVisible == true) {
	alpha -= random_range(.001, .02);
	if (alpha <= 0){
		isVisible = false;
	}
} 
if (alpha <= 1 && isVisible == false) {
	alpha += random_range(.001, .02);
	if (alpha >= 1){
		isVisible = true;
	}
}

draw_set_alpha(1)