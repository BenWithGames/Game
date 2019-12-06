if (place_meeting(x,y, obj_player)) {
	if (keyboard_check_pressed(ord("F"))) {
		if (myTextbox == noone) {
			myTextbox = instance_create_layer(x,y,"Textbox", obj_textbox);
			myTextbox.text = argument0;
			myTextbox.creator = self;
			obj_player.isTalking = true;
		}
	}
} else {
	if(myTextbox != noone) {
		instance_destroy(myTextbox);
		myTextbox = noone;
		obj_player.isTalking = false;
	}
}