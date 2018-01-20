/// @description Insert description here
// You can write your code in this editor
//hitbox = collision_rectangle(x-40,y-40, x+40, y+40, obj_player,false,true);
if (place_meeting(x,y, obj_player)) {
	if (keyboard_check_pressed(ord("F"))) {
		if (myTextbox == noone) {
			myTextbox = instance_create_layer(x,y,"Textbox", obj_textbox);
			myTextbox.text = myText;
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