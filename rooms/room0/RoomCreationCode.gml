// Audio
audio_play_sound(sound_ocean_waves,1,true);

// Create dialogue 
instance_create_layer(0,0, "Instances", obj_comrade_12_dialogue_beach);
instance_create_layer(0,0, "Instances", obj_comrade_2_dialogue_beach);
instance_create_layer(0,0, "Instances", obj_comrade_11_dialogue_beach);
instance_create_layer(0,0, "Instances", obj_comrade_13_dialogue_beach);
instance_create_layer(0,0, "Instances", obj_comrade_1_dialogue_beach);

// Assign dialogue
obj_comrade_12.myText = obj_comrade_12_dialogue_beach.myText;
obj_comrade_2.myText = obj_comrade_2_dialogue_beach.myText;
obj_comrade_11.myText = obj_comrade_11_dialogue_beach.myText;
obj_comrade_13.myText = obj_comrade_13_dialogue_beach.myText;
obj_comrade_1.myText = obj_comrade_1_dialogue_beach.myText;
obj_comrade_13.myTextNo = obj_comrade_13_dialogue_beach.myTextNo;
obj_comrade_13.myTextYes = obj_comrade_13_dialogue_beach.myTextYes;
