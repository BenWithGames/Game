/// @description Insert description here
// You can write your code in this editor
//hitbox = collision_rectangle(x-40,y-40, x+40, y+40, obj_player,false,true);

if (place_meeting(x,y, obj_player)) {
	if (keyboard_check_pressed(ord("F"))) {
		if (myTextbox == noone) {
			myTextbox = instance_create_layer(x,y,"Textbox", obj_textbox);
			myTextbox.decision = true;
			myTextbox.text = myText;
			myTextbox.creator = self;
			obj_player.isTalking = true;
		}
		if (myTextbox.page + 1 == array_length_1d(myTextbox.text) && myTextbox.charCount == string_length(myTextbox.text[0]) && myTextbox.decision == true) {
			if (myTextboxDecision == noone) {
				myTextboxDecision = instance_create_layer(x,y,"Textbox", obj_textbox_yes_no);
				myTextboxDecision.text = myTextDecision;
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
