draw_self()
draw_sprite_ext(spr_user_table_head,0,x,y,1,1,0,c_yellow,1)

if instance_exists(obj_control_main)
{
if obj_control_main.received_player_list = true
{
//draw_text(150,160,"Online users")
var i = 0
repeat (ds_list_size(global.alluser_list))
	{
	var current_user_map = ds_list_find_value(global.alluser_list,i)
	var nickname = ds_map_find_value(current_user_map,"Nickname")
	draw_set_font(font0)
	draw_text(x,y+75+(30*i),nickname)
	i++
	}

}
}