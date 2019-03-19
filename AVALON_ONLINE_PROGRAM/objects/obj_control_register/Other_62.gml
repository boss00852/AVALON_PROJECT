if ds_map_find_value(async_load,"id") == global.register_POST
{
	if ds_map_find_value(async_load,"status") == 0
	{
		
		with (obj_bt_register_register)
		{
			instance_destroy(register_loading_object)	
			registing = false
		}
		
		
		var string_to_display1 = ds_map_find_value(async_load,"result")
		var register_map = json_decode(string_to_display1)
		
		var the_status = ds_map_find_value(register_map,"Status")
		
		if the_status == "RegisterSuccessful"
		{
			
			global.my_email = obj_registeration_from.username
			//show_message("การสมัครเสร็จสมบูรณ์")
			scr_show_message_modify(352,128,"การสมัครเสร็จสมบูรณ์")
			room_goto(rm_login)
		}
		else
		{
			if the_status == "Email Used"
			{
				scr_show_message_modify(352,128,"E-mail นี้ได้มีผู้ใช้งานแล้ว โปรดลองอีเมลล์อื่น")
				//show_message("E-mail นี้ได้มีผู้ใช้งานแล้ว โปรดลองอีเมลล์อื่น")
			}
		}
		
	}
}