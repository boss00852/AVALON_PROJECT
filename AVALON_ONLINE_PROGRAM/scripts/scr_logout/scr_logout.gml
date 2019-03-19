///@description




header_map = ds_map_create()
ds_map_add(header_map,"Content-Type","application/json")


user_map = ds_map_create()
ds_map_add(user_map,"key",string(global.my_key))

user_string = json_encode(user_map)

//show_message(user_string)


POST = http_request(global.server_ip+"/logout","POST",header_map,user_string)

ds_map_destroy(header_map)
ds_map_destroy(user_map)

return POST