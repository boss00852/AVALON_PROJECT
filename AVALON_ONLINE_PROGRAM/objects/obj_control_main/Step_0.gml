bt_getalluser = instance_nearest(x,y,obj_user_table)
bt_createroom = instance_nearest(x,y,obj_bt_create_room)
bt_joinroom = instance_nearest(x,y,obj_bt_join_room)
bt_logout = instance_nearest(x,y,obj_bt_logout)

#region get all user
if instance_exists(bt_getalluser)
{
	with(bt_getalluser)
	{
	if clicked == true
	{
		clicked = false
		global.getalluser_GET = http_get(global.server_ip+"/useronline")
		
	}
	}
}
#endregion

#region create room
if instance_exists(bt_createroom)
{
	with(bt_createroom)
	{
	if clicked == true
	{
		clicked = false
		
		header_map = ds_map_create()
		ds_map_add(header_map,"Content-Type","application/json")


		user_map = ds_map_create()
		ds_map_add(user_map,"key",string(global.my_key))
		ds_map_add(user_map,"nickname",string(global.my_nickname))
		user_string = json_encode(user_map)

		//show_message(user_string)


		global.createroom_POST = http_request(global.server_ip+"/createroom","POST",header_map,user_string)

		ds_map_destroy(header_map)
		ds_map_destroy(user_map)
		
		
		
		
		
	}
	}
}
#endregion

#region join room
if instance_exists(bt_joinroom)
{
	with(bt_joinroom)
	{
	if clicked == true
	{
		clicked = false
		//global.getalluser_GET = http_get(global.server_ip+"/useronline")
		
	}
	}
}
#endregion


#region logout
if instance_exists(bt_logout)
{
	with(bt_logout)
	{
	if clicked == true
	{
		clicked = false
		if logout_ing = false
		{
	logout_ing = true
	logout_loading_object = instance_create_depth(0,0,-500,obj_loading)
	logout_loading_object.loading_string = "กำลังLogout..."
	global.logout_POST = scr_logout()
		}
		
	}
	}
}



#endregion

