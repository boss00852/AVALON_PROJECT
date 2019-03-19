/// @description draw text
draw_self()
draw_set_font(font0)
draw_set_color(c_black)
draw_set_halign(0)
draw_set_valign(0)
if username = ""
{
	draw_set_color(c_gray)
	draw_text(x+18,y+26,"E-mail")
}
else
{
	draw_set_color(c_black)
	draw_text(x+18,y+26,username)
	

}

if select_username = true
	{
		draw_line_width(x+18+string_width(username),y+16,x+18+string_width(username),y+16+string_height(username),3)
	}


if password = ""
{
	draw_set_color(c_gray)
	draw_text(x+18,y+78,"Password")
}
else
{
	draw_set_color(c_black)
	draw_text(x+18,y+78,password)
	
	
}

if select_password = true
	{
		draw_line_width(x+18+string_width(password),y+68,x+18+string_width(password),y+string_height(password)+68,3)
	}