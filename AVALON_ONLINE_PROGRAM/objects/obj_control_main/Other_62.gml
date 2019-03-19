var the_id = ds_map_find_value(async_load,"id")
switch (the_id) {
    case global.changenickname_POST:
        if ds_map_find_value(async_load,"status") == 0
		{
		var string_received = ds_map_find_value(async_load,"result")
		var login_map = json_decode(string_received)
		
		var the_status = ds_map_find_value(login_map,"Status")
		
		switch (the_status) {
		    case "ChangeNickNameSuccessful":
		        global.my_nickname = ds_map_find_value(login_map,"Nickname")
				scr_show_message_modify(352,128,"เปลี่ยนชื่อสำเร็จแล้ว \n ยินดีต้อนรับคุณ "+global.my_nickname)
		        break;
			case "ChangeNickNameFailed":
			    scr_show_message_modify(352,128,"เปลี่ยนชื่อไม่สำเร็จ \n ท่านจะถูกดีดออกจากระบบ")
				global.logout_POST = scr_logout()
				break;
		}
		
		}
        break;
    case global.logout_POST:
        if ds_map_find_value(async_load,"status") == 0
		{
			with (obj_bt_logout)
		{
			instance_destroy(logout_loading_object)	
			logout_ing = false
		}
		
		var string_to_display1 = ds_map_find_value(async_load,"result")
		var logout_map = json_decode(string_to_display1)
		var the_status = ds_map_find_value(logout_map,"Status")
		
		switch (the_status) {
		    case "LogoutSuccessful" :
				scr_show_message_modify(352,128,"Logout สำเร็จ \n " + "KEY คือ "+string(global.my_key))
				room_goto(rm_login)
		        break;
			case "LogoutFailed":
			    var error_string = ds_map_find_value(logout_map,"StatusMessage")
				//show_message("Logout ล้มเหลว \n " + "ERROR : "+string(error_string))
				scr_show_message_modify(352,128,"Logout ล้มเหลว \n " + "ERROR : "+string(error_string))
				break;
		}
		
		}
        break;
		case global.getalluser_GET:
		if ds_map_find_value(async_load,"status") == 0
		{
			received_player_list = false
			ds_list_clear(global.alluser_list)
			
			
		var raw_data = ds_map_find_value(async_load,"result")
		if raw_data != undefined
		{
		
		var alluser_map = json_decode(raw_data)
		var the_status = ds_map_find_value(alluser_map,"Status")
		
		if the_status == "GetUserOnlineSuccessful"
		    {
				received_player_list = true
			
			
			global.alluser_list = ds_map_find_value(alluser_map,"Useronline")
			
			
			
			
				//scr_show_message_modify(352,128,"จำนวน user ที่ออนไลน์คือ "+ string(ds_list_size(global.alluser_list)))
			}
		//ds_map_destroy(alluser_map)
		}
		}
		//
		
		alarm[0] = 60
		break;
		
		
		
		case global.getallroom_GET:
		var raw_data = ds_map_find_value(async_load,"result")
		
		if raw_data != undefined
		{
		var allroom_map = json_decode(raw_data)
		var the_status = ds_map_find_value(allroom_map,"Status")
		
		if the_status == "GetAllroomSuccessful"
		    {
				//scr_show_message_modify(352,128,string(raw_data))
			}
		//ds_map_destroy(allroom_map)
		}
		
		//ds_map_destroy(allroom_map)
		
		alarm[1] = 60
		break;
		
		case global.createroom_POST:
		 if ds_map_find_value(async_load,"status") == 0
		{
		var string_received = ds_map_find_value(async_load,"result")
		var createroom_map = json_decode(string_received)
		
		var the_status = ds_map_find_value(createroom_map,"Status")
		
		switch (the_status) {
		    case "CreateRoomSuccessful":
				scr_show_message_modify(352,128,"...สร้างห้องสำเร็จ...")
				room_goto(rm_game)
		        break;
			default:
			    scr_show_message_modify(352,128,"สร้างห้องไม่สำเร็จ เนื่องด้วยเหตุบางอย่าง")
				break;
		}
		
		}
		
		
		
		break;
		
}

