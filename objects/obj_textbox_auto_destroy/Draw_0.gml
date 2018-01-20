/// @description Insert description here
// You can write your code in this editor

draw_set_font(font_text);



draw_sprite_stretched(spr_textbox, 0, obj_comrade_11.x, obj_comrade_11.y, string_width(text[page])+ 15, string_height(text[page]));

if (charCount < string_length(text[page])) {
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
	draw_text_ext(obj_comrade_11.x + 10, obj_comrade_11.y + 5, textContinue, string_height(text[page]), camera_get_view_width(camera)-20);
} else {
	draw_text_ext(obj_comrade_11.x + 10, obj_comrade_11.y + 5, textPart, string_height(text[page]), camera_get_view_width(camera)-20);
	length+=1;
}