bt_login = instance_nearest(x,y,obj_bt_login)
bt_exit = instance_nearest(x,y,obj_bt_exit)
bt_register = instance_nearest(x,y,obj_bt_register)
bt_textbox_login = instance_nearest(x,y,obj_textbox_login)


if instance_exists(bt_login)
{
	with(bt_login)
	{
	if clicked == true
	{
		clicked = false
	#region when login bt clicked
	image_xscale = 1
image_yscale = 1
//show_message("คลิกปุ่ม ล๊อกอินนนนนน")
if (obj_textbox_login.username != "" and obj_textbox_login.password != "")
{
	
	
	if logining = false
	{
		logining = true
	
	login_loading_object = instance_create_depth(0,0,-500,obj_loading)
	login_loading_object.loading_string = "กำลังLogin..."
	
	
header_map = ds_map_create()
ds_map_add(header_map,"Content-Type","application/json")


user_map = ds_map_create()
ds_map_add(user_map,"email",string(obj_textbox_login.username))
ds_map_add(user_map,"password",string(obj_textbox_login.password))


user_string = json_encode(user_map)

//show_message(user_string)


global.login_POST = http_request(global.server_ip+"/login","POST",header_map,user_string)

ds_map_destroy(header_map)
ds_map_destroy(user_map)
	}
}
else
{
//show_message("โปรดกรอก E-mail หรือ Password")
scr_show_message_modify(352,128,"โปรดกรอก E-mail หรือ Password")
}
	#endregion
		
	}
	}
}


if instance_exists(bt_exit)
{
	with(bt_exit)
	{
	if clicked == true
	{
		clicked = false
		
		with (other)
		{
		if !instance_exists(obj_message_question)
		{
		msg_question_exit = scr_show_message_question_modify(352,128,"คุณต้องการออกจากเกมใช่หรือไม่?")
		}
		}
	}
	}
}


	with (msg_question_exit)	
	{
		if message_status != -1
		{
		if message_status == 1 // user choose yes
		{
			//show_message("end game")
			game_end()
		}
		if message_status == 0 // user choose close
		{
			instance_destroy(self)
		}
		if message_status == 2 // user choose no
		{
			
			instance_destroy(self)
		}
		
		
		instance_destroy(self)
		}
		
	}



if instance_exists(bt_register)
{
	with(bt_register)
	{
	if clicked == true
	{
		clicked = false
		room_goto(rm_register)
	}
	}
}

if instance_exists(bt_textbox_login)
{
	with(bt_textbox_login)
	{
	if clicked == true
	{
		clicked = false
		if mouse_x < x+(313)
{
if mouse_y < y+52
{
	
	if username  = ""
	{ keyboard_string = "" }
	else
	{keyboard_string = username}
	
	if os_type == os_android or os_type == os_ios and !instance_exists(obj_v_keyboard_control)
		{instance_create_depth(x,y,-1000,obj_v_keyboard_control)}
	
	select_username = true
	select_password = false
	username = keyboard_string
}
else
{
	if password  = ""
	{ keyboard_string = "" }
		
	else
	{keyboard_string = password}
	
	if (os_type == os_android or os_type == os_ios) and !instance_exists(obj_v_keyboard_control)
		{instance_create_depth(x,y,-1000,obj_v_keyboard_control)}
	
    select_username = false
	select_password = true
	password = keyboard_string
}
}
		
	}
	}
}

