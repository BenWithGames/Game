if (myTextboxDecision != noone) {
	
	if (keyboard_check(ord("W"))) myTextboxDecision.yesOrNo = 0;
	if (keyboard_check(ord("S"))) myTextboxDecision.yesOrNo = 1;
	if (keyboard_check_pressed(vk_enter)) {
	if (myTextboxDecision.yesOrNo == 0) {
		instance_destroy(myTextbox);
		myTextbox = noone
		instance_destroy(myTextboxDecision);
		myTextboxDecision = noone;
		
		if (myTextbox == noone) {
			myTextbox = instance_create_layer(x,y,"Textbox", obj_textbox);
			myTextbox.text = myTextYes;
			myTextbox.creator = self;
			myTextbox.decision = false;
			yes = true;
		
		}
		
	}
	if (instance_exists(myTextboxDecision)) {
		if (myTextboxDecision.yesOrNo ==1) {
			instance_destroy(myTextbox);
			myTextbox = noone
			instance_destroy(myTextboxDecision);
			myTextboxDecision = noone;
		
			if (myTextbox == noone) {
				myTextbox = instance_create_layer(x,y,"Textbox", obj_textbox);
				myTextbox.text = myTextNo;
				myTextbox.creator = self;
				myTextbox.decision = false;
			}
		}
	}
}

}
if (yes == true) {

	obj_player.isTalking = true;
	obj_fade.fadeFromBlack = false;
	if (alarm[0] < 0) alarm[0] = room_speed * 2;
	if (obj_fade.alpha <= 1 && waitTwoSecs = true) {
		obj_fade.alpha +=.005;
		if (obj_fade.alpha >= 1) {
			room_goto(room1);
		}
	}
}