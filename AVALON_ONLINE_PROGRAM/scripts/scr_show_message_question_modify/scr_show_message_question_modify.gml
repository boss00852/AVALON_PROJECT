 ///@description scr_show_message_modify(x,y,string)


var message_obj = instance_create_layer(argument0,argument1,"message_layer",obj_message_question)
message_obj.message_box_string = argument2

return message_obj