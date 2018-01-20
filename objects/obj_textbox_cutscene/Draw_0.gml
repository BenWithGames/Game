/// @description Insert description here
// You can write your code in this editor

draw_set_font(font_text);

draw_sprite_stretched(spr_textbox, 0, camera_get_view_x(camera), camera_get_view_y(camera) + camera_get_view_height(camera) - 70 ,
	camera_get_view_width(camera) , sprite_get_height(spr_textbox));

if (charCount < string_length(text[page])) {
	if (keyboard_check_pressed(ord("G"))) {
		pageHit = true;
		charCount = string_length(text[page]);
	}	
	charCount += 1;
} else {
	pageHit =  true;
}

if (charCount % 3 == 0 && charCount < string_length(text[page])) {
	audio_play_sound(sound_text, 1, false);
}

textPart = string_copy(text[page], 1, charCount);	

stringWrapHeightPerFrame = string_height_ext(textPart, -1,  camera_get_view_width(camera)-20);

if (stringWrapHeightPerFrame > sprite_get_height(spr_textbox)) {
	charCountContinue +=1
	textContinue = string_copy(text[page], length, charCountContinue); 
	draw_text_ext(camera_get_view_x(camera) + 10, camera_get_view_y(camera) + camera_get_view_height(camera) - 60, 
	textContinue, string_height(text[page]), camera_get_view_width(camera)-20);
} else {
	draw_text_ext(camera_get_view_x(camera) + 10, camera_get_view_y(camera) + camera_get_view_height(camera) - 60, 
		textPart, string_height(text[page]), camera_get_view_width(camera)-20);
	length+=1;
}