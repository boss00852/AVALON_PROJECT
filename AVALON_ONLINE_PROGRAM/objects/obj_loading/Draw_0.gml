/// @description Insert description here
// You can write your code in this editor


draw_self()

draw_set_color(c_black)
draw_set_font(font1)
draw_set_valign(1)
draw_set_halign(1)
draw_text(x,y-30,loading_string)


draw_sprite_ext(spr_sword_loading,0,x,y+50,1,1,sword_angle,c_white,1)




draw_line_width(x-175,y+50,x-60,y+50,3)
draw_line_width(x+60,y+50,x+175,y+50,3)