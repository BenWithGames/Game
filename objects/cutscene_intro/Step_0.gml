/// @description Insert description here
// You can write your code in this editor

if (isCutsceneOn == true) {
	obj_player.isTalking = true;
	obj_fade.fadeFromBlack = true;
	camera_set_view_pos(camera, xpos, ypos);
	
	//Set into camera
	if (camera_get_view_y(camera) <= 110) {
		ypos += .5;
	} else if (camera_get_view_y(camera) <= 130) {
		ypos += .4
	} else if (camera_get_view_y(camera) <= 150) {
		ypos += .3
	} else if (camera_get_view_y(camera) <= 160) {
		ypos += .2
	} else if (camera_get_view_y(camera) <= 170) {
		ypos += .1
	} else {
		//Start the dialogue
		if (alarm[0] <= 0){
			alarm[0] = room_speed * 3;
		}
		if (waitThreeSecs == true) {
			if(myTextbox == noone) {
				myTextbox = instance_create_layer(x,y,"Textbox",obj_textbox_cutscene);
				myTextbox.text = myText;
				myTextbox.creator = self;
			}
			if (!instance_exists(myTextbox)){
				if (alarm[2] < 0) {
					alarm[2] = room_speed;
				}
				if (waitOneSec == true && myTextbox1 == noone) {
					myTextbox1 = instance_create_layer(x,y,"Textbox",obj_textbox_cutscene);
					myTextbox1.text = myText1;
					myTextbox1.creator = self;
				}

				if (!instance_exists(myTextbox1) && waitOneSec == true && xpos > 238 && skipperTalked == false){
					xpos -= 1;
				}
				
				if (xpos == 238 && !instance_exists(myTextbox1) && myTextbox2 == noone) {
					myTextbox2 = instance_create_layer(x,y,"Textbox",obj_textbox_cutscene);
					myTextbox2.text = myText2;
					myTextbox2.creator = self;
					skipperTalked = true;
				}
				
				if (!instance_exists(myTextbox2) && xpos <= 311 && skipperTalked == true) {
					xpos +=1;
					if (xpos == 310){
						isCutsceneOn = false;
						obj_player.isTalking = false;
					}
				}
				
			}
		}
	}
} 
