global.logout_POST = ""
global.changenickname_POST = ""
global.createroom_POST = ""
global.joinroom_POST = ""


global.getalluser_GET = ""



global.alluser_list = ds_list_create()

received_player_list = false


global.getalluser_GET = http_get(global.server_ip+"/useronline")

global.getallroom_GET = http_get(global.server_ip+"/getallroom")



