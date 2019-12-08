/// @description Insert description here
// You can write your code in this editor
event_inherited();

myText[0] = "Captain: Alright men-";
myText[1] = "Captain: Prepare to engage the enemy. We are in enemy territory now. Be on gaurd at all times!";
myText[2] = "Barron: Looks like they already notice us!";
myText[3] = "Captain: MEN!";
myText[4] = "Captain: Draw your weapons! We attack now!";

myText1[0] = "Enemy 1: Welcome to [enemy land]. Any last words?";
myText1[1] = "Dylon: Yeah, your beach sucks.";
myText1[2] = "Enemy 1: What a waste of breath. Your men are no watch for the Elite Corps!";
myText1[3] = "Player: The Elite Corps?";
myText1[4] = "Leina: I've been waiting to run my foot up your ass all day long!"; 

myText2[0] = "Captain: Leina!";
myText3[0] = "Captain: Oh whatever... Everyone, charge!";

myTextLeina1[0] = "Leina: Ahem";
myTextLeina2[0] = "Leina: *AHEM*";
myTextLeina3[0] = "Leina: That's it!";

myTextbox = noone;
myTextbox1 = noone;
myTextbox2 = noone;
myTextBox3 = noone;
myTextboxLeina1 = noone;
myTextboxLeina2 = noone;
myTextboxLeina3 = noone;

camera = view_camera[0];

xPos = camera_get_view_x(camera);

yPos = camera_get_view_y(camera);

leinaSet = noone;

waitOneSec = false;

leinaEnemy = instance_id_get(8);
barronEnemy = instance_id_get(9);
otherDudeEnemy = instance_id_get(12);
//DylonEnemy;
playerEnemy = instance_id_get(10);