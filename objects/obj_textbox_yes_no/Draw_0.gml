/// @description Insert description here
// You can write your code in this editor
draw_set_font(font_text);

draw_sprite_stretched(spr_textbox, 0, camera_get_view_x(camera) + 430, camera_get_view_y(camera) + camera_get_view_height(camera) - 140 ,
	sprite_get_width(spr_textbox) , sprite_get_height(spr_textbox));

draw_text_ext(camera_get_view_x(camera) + 450, camera_get_view_y(camera) + camera_get_view_height(camera) - 130, 
	"Yes", string_height("Yes"), sprite_get_width(spr_textbox));

draw_text_ext(camera_get_view_x(camera) + 450, camera_get_view_y(camera) + camera_get_view_height(camera) - 130 + string_height("No"), 
	"No", string_height("No"), sprite_get_width(spr_textbox));

if (yesOrNo == 0){
	draw_sprite(spr_arrow, 0, camera_get_view_x(camera) + 430, camera_get_view_y(camera) + camera_get_view_height(camera) - 135);
}
if (yesOrNo == 1){
	draw_sprite(spr_arrow, 0, camera_get_view_x(camera) + 430, camera_get_view_y(camera) + camera_get_view_height(camera) - 135 + string_height("No"));
}