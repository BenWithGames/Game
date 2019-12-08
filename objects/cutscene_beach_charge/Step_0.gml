/// @description Insert description here
// You can write your code in this editor

if (currentState = cutSceneStates.Active) {
	camera_set_view_pos(camera, xPos, yPos);
	obj_player.isTalking = true;
	switch (currentStep) {
		case 0: //Create initial text after fade
			if (obj_fade.alpha <= 0) {
				if (myTextbox == noone) {
					myTextbox = instance_create_layer(x,y,"Textbox", obj_textbox);
					myTextbox.text = myText;
					myTextbox.creator = self;
				}
				
				if (instance_exists(myTextbox)) {
					if (myTextbox.page == 0 && myTextbox.charCount == string_length(myTextbox.text[myTextbox.page])) {
						if (myTextboxLeina1 == noone) {
							myTextboxLeina1 = instance_create_layer(x,y,"Textbox", obj_textbox_auto_destroy);
							myTextboxLeina1.text = myTextLeina1;
							myTextboxLeina1.creator = self;
						}
					}
				
					if (myTextbox.page == 3 && myTextbox.charCount == string_length(myTextbox.text[myTextbox.page])) {
						if (myTextboxLeina2 == noone) {
							myTextboxLeina2 = instance_create_layer(x,y,"Textbox", obj_textbox_auto_destroy);
							myTextboxLeina2.text = myTextLeina2;
							myTextboxLeina2.creator = self;
						
						}
					}
				}
				
				if (!instance_exists(myTextbox)) {
					++currentStep;
				}
			} 
			break;
		
		case 1: // move the boat on shore
			if (obj_boat.x <= 150) {
				obj_boat.x += 1;
				xPos +=2;
				obj_player.x += 1;
				obj_comrade_1.x +=1;
				obj_comrade_2.x +=1;
				obj_comrade_12.x += 1;
				obj_comrade_13.x += 1;
				obj_comrade_11.x += 1;
			} else {
				++currentStep;
			}
			break;
			
		case 2: // move all objects to the end of the boat
			if (obj_player.x <= 667 && obj_player.y <= 400) {
				obj_player.speed = 3;
				obj_player.direction = point_direction(obj_player.x, obj_player.y, 667, 400);
			} else if (obj_player.x <= 770 && obj_player.y >= 320  ) {
				obj_player.direction = point_direction(obj_player.x, obj_player.y, 770, 320);
			} else {
				obj_player.speed = 0;
			}
			
			if (obj_comrade_2.x <= 667 && obj_comrade_2.y <= 400){
				obj_comrade_2.speed = 3;
				obj_comrade_2.direction = point_direction(obj_comrade_2.x, obj_comrade_2.y, 667, 400);
			} else if (obj_comrade_2.x <= 770 && obj_comrade_2.y <= 420  ) {
				obj_comrade_2.direction = point_direction(obj_comrade_2.x, obj_comrade_2.y, 770, 420);
			} else {
				obj_comrade_2.speed = 0;
			}
			
			if (obj_comrade_1.x <= 667 && obj_comrade_1.y <= 400){
				obj_comrade_1.speed = 3;
				obj_comrade_1.direction = point_direction(obj_comrade_1.x, obj_comrade_1.y, 667, 400);
			} else if (obj_comrade_1.x <= 770 && obj_comrade_1.y >= 400  ) {
				obj_comrade_1.direction = point_direction(obj_comrade_1.x, obj_comrade_1.y, 770, 400);
			} else {
				obj_comrade_1.speed = 0;
				
			}
			
			if (obj_comrade_12.x <= 667 && obj_comrade_12.y >= 400){
				obj_comrade_12.speed = 3;
				obj_comrade_12.direction = point_direction(obj_comrade_12.x, obj_comrade_12.y, 667, 400);
			} else if (obj_comrade_12.x <= 770 && obj_comrade_2.y >= 320  ) {
				obj_comrade_12.direction = point_direction(obj_comrade_12.x, obj_comrade_12.y, 770, 500);
			} else {
				obj_comrade_12.speed = 0;
				alarm[0] = room_speed;
				
			}
			
			if (obj_comrade_11.x <= 667 && obj_comrade_11.y >= 400){
				obj_comrade_11.speed = 3;
				obj_comrade_11.direction = point_direction(obj_comrade_11.x, obj_comrade_11.y, 667, 400);
			} else if (obj_comrade_11.x <= 770 && obj_comrade_11.y >= 320  ) {
				obj_comrade_11.direction = point_direction(obj_comrade_11.x, obj_comrade_11.y, 770, 470);
			} else {
				obj_comrade_11.speed = 0;
				
			}
			
			if (obj_comrade_13.x <= 667 && obj_comrade_13.y >= 400) {
				obj_comrade_13.speed = 3;
				obj_comrade_13.direction = point_direction(obj_comrade_13.x, obj_comrade_13.y, 667, 400);
			} else if (obj_comrade_13.x <= 720 || obj_comrade_13.y <= 440  ) {
				obj_comrade_13.direction = point_direction(obj_comrade_13.x, obj_comrade_13.y, 720, 440);
			} else {
				obj_comrade_13.speed = 0;
				++currentStep;
			}
			break;
			
		case 3: // pan the camera to the right
			if (waitOneSec = true) {
				if (xPos < 730 ){
					xPos +=3;
				} else {
					++currentStep;
				}
			}
			break;
			
		case 4: //start the text
			if (myTextbox1 == noone) {
				myTextbox1 = instance_create_layer(x, y, "Textbox", obj_textbox);
				myTextbox1.text = myText1;
				myTextbox1.creator = self;
			}
			
			if (instance_exists(myTextbox1)) {
				if (myTextbox1.page == 2 && myTextbox1.charCount == string_length(myTextbox1.text[myTextbox1.page])) {
					if (myTextboxLeina3 == noone) {
						myTextboxLeina3 = instance_create_layer(x,y,"Textbox", obj_textbox_auto_destroy);
						myTextboxLeina3.text = myTextLeina3;
						myTextboxLeina3.creator = self;
					}
				}
			}
			
			if (!instance_exists(myTextbox1)){
				++currentStep;
			}
			break;
			
		case 5: //990 490 Leina charges an enemy
			if (obj_comrade_11.x < 990 || obj_comrade_11.y < 480){
				obj_comrade_11.speed = 3;
				obj_comrade_11.direction = point_direction(obj_comrade_11.x, obj_comrade_11.y, 990, 480);
			} else {
				obj_comrade_11.speed = 0;
				leinaSet = true;
				
			}
			
			if (leinaEnemy.x > 990 || leinaEnemy.y < 480){
				leinaEnemy.speed = 3;
				leinaEnemy.direction = point_direction(leinaEnemy.x, leinaEnemy.y, 990, 480);
			} else {
				leinaEnemy.speed = 0;
			}
			
			if (myTextbox2 = noone) {
				myTextbox2 = instance_create_layer(x, y, "Textbox", obj_textbox);
				myTextbox2.text = myText2;
				myTextbox2.creator = self;
			} else if (!instance_exists(myTextbox2) && leinaSet == true) {
				++currentStep;
			}
		
			break;
			
		case 6: //Everyone charges after her
			if (myTextBox3 = noone) {
				myTextBox3 = instance_create_layer(x, y, "Textbox", obj_textbox);
				myTextBox3.text = myText3;
				myTextBox3.creator = self;
			}
			
			if (!instance_exists(myTextBox3)) {
		
				if (obj_comrade_1.x < 990 || obj_comrade_1.y > 380){
					obj_comrade_1.speed = 3;
					obj_comrade_1.direction = point_direction(obj_comrade_1.x, obj_comrade_1.y, 990, 380);
				} else {
					obj_comrade_1.speed = 0;
				}
			
				if (barronEnemy.x > 990 || barronEnemy.y < 380){
					barronEnemy.speed = 3;
					barronEnemy.direction = point_direction(barronEnemy.x, barronEnemy.y, 990, 380);
				} else {
					barronEnemy.speed = 0;
				}
			
				if (obj_comrade_12.x < 990 || obj_comrade_12.y < 547){
					obj_comrade_12.speed = 3;
					obj_comrade_12.direction = point_direction(obj_comrade_12.x, obj_comrade_12.y, 990, 547);
				} else {
					obj_comrade_12.speed = 0;
				}
			
				if (otherDudeEnemy.x > 990 || otherDudeEnemy.y < 547){
					otherDudeEnemy.speed = 3;
					otherDudeEnemy.direction = point_direction(otherDudeEnemy.x, otherDudeEnemy.y, 990, 547);
				} else {
					otherDudeEnemy.speed = 0;
				}
			
				if (obj_player.x < 990 || obj_player.y > 283){
					obj_player.speed = 3;
					obj_player.direction = point_direction(obj_player.x, obj_player.y, 990, 283);
				} else {
					obj_player.speed = 0;
				}
			
				if (playerEnemy.x > 990 || playerEnemy.y < 283){
					playerEnemy.speed = 3;
					playerEnemy.direction = point_direction(playerEnemy.x, playerEnemy.y, 990, 283);
				} else {
					playerEnemy.speed = 0;
				}
			
			
		}
	}

} else if (currentState = cutSceneStates.Paused) {
	
}
show_debug_message(string(currentStep));
show_debug_message(string(obj_comrade_11.x));