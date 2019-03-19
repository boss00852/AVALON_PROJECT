/// @description draw text
draw_self()
draw_set_font(font0)
draw_set_color(c_black)
draw_set_halign(0)
draw_set_valign(0)

if username = ""
{
	draw_set_color(c_gray)
	draw_text(x+32,y+57+14,"E-mail")
}
else
{
	draw_set_color(c_black)
	draw_text(x+32,y+57+14,username)
}

if select_username = true
	{
		draw_line_width(x+32+string_width(username),y+57+5,x+32+string_width(username),y+57+string_height(username),3)
	}
	
	
if username_confirm = ""
{
	draw_set_color(c_gray)
	draw_text(x+32,y+142+14,"ยืนยัน E-mail")
}
else
{
	draw_set_color(c_black)
	draw_text(x+32,y+142+14,username_confirm)
}

if select_username_confirm = true
	{
		draw_line_width(x+32+string_width(username_confirm),y+142+5,x+32+string_width(username_confirm),y+142+string_height(username_confirm),3)
	}


if password = ""
{
	draw_set_color(c_gray)
	draw_text(x+32,y+283+14,"Password")
}
else
{
	draw_set_color(c_black)
	draw_text(x+32,y+283+14,password)
}

if select_password = true
	{
		draw_line_width(x+32+string_width(password),y+283+5,x+32+string_width(password),y+283+string_height(password),3)
	}
	
if password_confirm = ""
{
	draw_set_color(c_gray)
	draw_text(x+32,y+367+14,"ยืนยัน Password")
}
else
{
	draw_set_color(c_black)
	draw_text(x+32,y+367+14,password_confirm)
}

if select_password_confirm = true
	{
		draw_line_width(x+32+string_width(password_confirm),y+367+5,x+32+string_width(password_confirm),y+367+string_height(password_confirm),3)
	}