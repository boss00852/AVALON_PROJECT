var i_d = ds_map_find_value(async_load, "id");
if i_d == msg
   {
   if ds_map_find_value(async_load, "status")
      {
      if ds_map_find_value(async_load, "result") != ""
         {
        var nickname = ds_map_find_value(async_load, "result");
		 
			header_map = ds_map_create()
			ds_map_add(header_map,"Content-Type","application/json")


			user_map = ds_map_create()
			ds_map_add(user_map,"Key",string(global.my_key))
			ds_map_add(user_map,"Nickname",string(nickname))


			user_string = json_encode(user_map)

			//show_message(user_string)


			global.changenickname_POST = http_request(global.server_ip+"/changenickname","POST",header_map,user_string)

			ds_map_destroy(header_map)
			ds_map_destroy(user_map)
         }
      }
   }