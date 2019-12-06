if (place_meeting(x,y, obj_player)) {
	if (keyboard_check_pressed(ord("F"))) {
		if (myTextbox == noone) {
			myTextbox = instance_create_layer(x,y,"Textbox", obj_textbox);
			myTextbox.decision = true;
			myTextbox.text = argument0;
			myTextbox.creator = self;
			obj_player.isTalking = true;
		}
		if (myTextbox.page + 1 == array_length_1d(myTextbox.text) && myTextbox.charCount == string_length(myTextbox.text[0]) && myTextbox.decision == true) {
			if (myTextboxDecision == noone) {
				myTextboxDecision = instance_create_layer(x,y,"Textbox", obj_textbox_yes_no);
				myTextboxDecision.text = argument1;
				myTextboxDecision.creator = self;	
				
			}	
		}
	}
} else {
	if(myTextbox != noone) {
		instance_destroy(myTextbox);
		myTextbox = noone;
		obj_player.isTalking = false;
	}
}