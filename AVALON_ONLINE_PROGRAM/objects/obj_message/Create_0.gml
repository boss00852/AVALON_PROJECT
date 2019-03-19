/// @description initialise variable

event_inherited()



message_box_head_string = "AVALON ONLINE"
message_box_head_string_colour = c_black
message_box_head_font = font1
message_box_head_colour = c_aqua




message_box_string = "ทดสอบ test test test ทดสอบ test test test ทดสอบ test test test ทดสอบ test test test ทดสอบ test test test ทดสอบ test test test ทดสอบ test test test ทดสอบ test test test"
message_box_string_colour = c_black
message_box_colour = $FFBCDC
message_box_font = font2



//------------------------------------------------------

confirm_bt = instance_create_layer(x+309,y+500-10-60,layer,obj_message_box_button)
with (confirm_bt)
{
message_box_confirm_button_string = "ตกลง"
message_box_confirm_button_string_colour = c_black
message_box_confirm_button_font = font1
message_box_confirm_button_colour = c_white
}

close_bt = instance_create_layer(x+575,y+50,layer,obj_message_box_close_button)
with (close_bt)
{
image_xscale = 0.8
image_yscale = 0.8
message_box_close_button_colour = c_red
}


