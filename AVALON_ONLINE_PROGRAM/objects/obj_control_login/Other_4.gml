/// @description check variable
if global.my_email != ""
{
	if instance_exists(obj_textbox_login)
	{
	 obj_textbox_login.username = global.my_email	
	}
}