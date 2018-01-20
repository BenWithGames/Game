/// @description Insert description here
// You can write your code in this editor
if (toDestroy == true) {
	if (page + 1 < array_length_1d(text)) {
		page +=1;
		charCount = 0; 
		charCountContinue =0;
		length = 0;
		pageHit = false;
	} else {
		if (decision == false){
			instance_destroy();
		}
		creator.alarm[1] = 1;
		obj_player.isTalking = false;
	}
}