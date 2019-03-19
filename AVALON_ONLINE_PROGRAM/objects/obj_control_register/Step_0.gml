bt_back = instance_nearest(x,y,obj_bt_back)
bt_register = instance_nearest(x,y,obj_bt_register_register)
bt_textbox_register = instance_nearest(x,y,obj_registeration_from)

if instance_exists(bt_register)
{
	with(bt_register)
	{
	if clicked == true
	{
		clicked = false
		#region register code
		/// @description registeration



if obj_registeration_from.username != "" and obj_registeration_from.password != ""
{
if obj_registeration_from.username == obj_registeration_from.username_confirm
{
if obj_registeration_from.password == obj_registeration_from.password_confirm	
	{
		if registing = false
		{
			registing = true
			register_loading_object = instance_create_depth(0,0,-500,obj_loading)
			register_loading_object.loading_string = "กำลัง Register..."
			
header_map = ds_map_create()
ds_map_add(header_map,"Content-Type","application/json")


user_map = ds_map_create()
ds_map_add(user_map,"email",string(obj_registeration_from.username))
ds_map_add(user_map,"password",string(obj_registeration_from.password))


user_string = json_encode(user_map)

//show_message(user_string)


global.register_POST = http_request(global.server_ip+"/register","POST",header_map,user_string)

ds_map_destroy(header_map)
ds_map_destroy(user_map)
		}
	}
	else
	{
		scr_show_message_modify(352,128,"Password ไม่ตรงกัน โปรดตรวจสอบอีกครั้ง")
	}
}
else
{
scr_show_message_modify(352,128,"E-mail ไม่ตรงกัน โปรดตรวจสอบอีกครั้ง")
}
}
else
{
//show_message("โปรดใส่ E-mail หรือ Password")	
scr_show_message_modify(352,128,"โปรดใส่ E-mail หรือ Password")
}
		
		#endregion
		
	}
	}
} 


if instance_exists(bt_back)
{
	with(bt_back)
	{
	if clicked == true
	{
		clicked = false
		room_goto(rm_login)
	}
	}
}

if instance_exists(bt_textbox_register)
{
	with(bt_textbox_register)
	{
	if clicked == true
	{
		clicked = false
		#region textbox register
		
		/// @description click
if mouse_y > y+57 and mouse_y < y+57+38
{
	if username  == ""
	{ keyboard_string = "" }
	else
	{keyboard_string = username}
	
	if (os_type == os_android or os_type == os_ios) and !instance_exists(obj_v_keyboard_control)
		{instance_create_depth(x,y,-1000,obj_v_keyboard_control)}
	select_username = true
	select_username_confirm = false
	select_password = false
	select_password_confirm = false
	username = keyboard_string
}
else 
if mouse_y > y+142 and mouse_y < y+142+38
{
	if username_confirm  == ""
	{ keyboard_string = "" }
	else
	{keyboard_string = username_confirm}
	
	if (os_type == os_android or os_type == os_ios) and !instance_exists(obj_v_keyboard_control)
		{instance_create_depth(x,y,-1000,obj_v_keyboard_control)}
	select_username = false
	select_username_confirm = true
	select_password = false
	select_password_confirm = false
	username_confirm = keyboard_string
}
else
if mouse_y > y+283 and mouse_y < y+283+38
{
	if password  == ""
	{ keyboard_string = "" }
	else
	{keyboard_string = password}
	
	if (os_type == os_android or os_type == os_ios) and !instance_exists(obj_v_keyboard_control)
		{instance_create_depth(x,y,-1000,obj_v_keyboard_control)}
	
    select_username = false
	select_username_confirm = false
	select_password = true
	select_password_confirm = false
	password = keyboard_string
}
else
if mouse_y > y+367 and mouse_y < y+367+38
{
	if password_confirm  == ""
	{ keyboard_string = "" }
	else
	{keyboard_string = password_confirm}
	
	if (os_type == os_android or os_type == os_ios) and !instance_exists(obj_v_keyboard_control)
		{instance_create_depth(x,y,-1000,obj_v_keyboard_control)}
	
    select_username = false
	select_username_confirm = false
	select_password = false
	select_password_confirm = true
	password_confirm = keyboard_string
}


		
		#endregion
	}
	}
}