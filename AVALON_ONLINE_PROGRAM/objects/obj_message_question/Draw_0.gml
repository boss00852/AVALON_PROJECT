/// @description draw_text_box
image_blend = message_box_colour
draw_sprite_ext(spr_message_box_body,0,x,y,1,1,0,image_blend,1)
draw_set_valign(1)
draw_set_halign(1)
draw_set_font(message_box_font)
draw_set_color(message_box_string_colour)
draw_text_ext(x+309,y+200,message_box_string,32,500)


draw_sprite_ext(spr_message_box_head,0,x-5,y-5,1,1,0,message_box_head_colour,0.85)
draw_set_valign(0)
draw_set_halign(0)
draw_set_font(message_box_head_font)
draw_set_color(message_box_head_string_colour)
draw_text(x+16,y+14,message_box_head_string)