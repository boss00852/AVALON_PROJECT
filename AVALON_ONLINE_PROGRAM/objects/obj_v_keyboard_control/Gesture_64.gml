if (mouse_y < (display_get_height()-keyboard_virtual_height()))
{
	keyboard_virtual_hide()
	instance_destroy(self)		
}