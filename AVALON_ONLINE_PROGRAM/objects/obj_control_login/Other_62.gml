if ds_map_find_value(async_load,"id") == global.login_POST
{
	if ds_map_find_value(async_load,"status") == 0
	{
		var string_to_display1 = ds_map_find_value(async_load,"result")
		
		with (obj_bt_login)
		{
			instance_destroy(login_loading_object)	
			logining = false
		}
		
		
		var login_map = json_decode(string_to_display1)
		
		var the_status = ds_map_find_value(login_map,"Status")
		
		switch (the_status) {
		    case "LoginSuccessful":
		        global.my_key = ds_map_find_value(login_map,"Key")
				global.my_nickname = ds_map_find_value(login_map,"Nickname")
				
				scr_show_message_modify(352,128,"Login สำเร็จ \n " + "KEY คือ "+string(global.my_key))
				room_goto(rm_main)
		        break;
			case "LoginFailed":
			    var error_string = ds_map_find_value(login_map,"StatusMessage")
				scr_show_message_modify(352,128,"Login ล้มเหลว \n " + "ERROR : "+string(error_string))
				break;
		}
		
	}
}