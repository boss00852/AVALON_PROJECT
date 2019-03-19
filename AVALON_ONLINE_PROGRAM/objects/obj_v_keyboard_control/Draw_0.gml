

if keyboard_virtual_status()
{
var xx = room_width/2
var yy = (room_height-keyboard_virtual_height())/2

draw_set_color(c_white)
draw_rectangle(xx-xx,yy-60,xx+xx,yy+25,false)

draw_set_color(c_black)
draw_set_font(font1)
draw_set_valign(1)
draw_set_halign(1)
draw_text(xx,yy,string(kv_input_string))
}