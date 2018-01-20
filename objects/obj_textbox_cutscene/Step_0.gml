/// @description Insert description here
// You can write your code in this editor
if (pageHit == true) {
	if (keyboard_check_pressed(ord("F"))) {
		if (page + 1 < array_length_1d(text)){
			page +=1;
			charCount = 0; 
			charCountContinue =0;
			length = 0;
			pageHit = false;
		} else {
			instance_destroy();
		}
	}
}